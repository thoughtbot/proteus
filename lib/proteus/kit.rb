require "proteus/version"
require "proteus/repos"
require "thor"

module Proteus
  class Kit < Thor
    include Thor::Actions

    no_commands do
      def url(id)
        kit = Proteus::REPOS[id.to_sym]
        kit[:url]
      end

      def name(id)
        kit = Proteus::REPOS[id.to_sym]
        kit[:name]
      end
    end

    desc "list", "shows a list of available kits"
    def list
      repos = Proteus::REPOS
      repos.each do |id, repo|
        puts "#{id} - #{repo[:name]}"
      end
    end

    desc "new", "runs the command to clone a particular kit"
    def new(id, dir = nil)
      dir ||= id
      kit = Proteus::REPOS[id.to_sym]

      if kit
        name = kit[:name]
        url = kit[:url]

        if system "git ls-remote #{url} #{dir} > /dev/null 2>&1"
          puts "Starting a new #{name} project in #{dir} from #{url}"
          system %{
            git clone "#{url}" "#{dir}" &&
            cd "#{dir}" &&
            rm -rf .git &&
            git init &&
            git add . &&
            git commit -m 'New #{name} project' &&
            cd -
          }
        else
          puts "Can't find a repo at #{url}."
        end
      else
        puts "Kit not found. Run `proteus list` to see available kits."
      end
    end

    desc "setup", "Sets up the project"
    def setup
      puts "Setting up your project"
      system "bin/setup"
    end

    desc "server", "Runs the server"
    def server
      puts "Starting the server"
      system "bin/server"
    end

    desc "deploy", "Deploys the site to Github"
    def deploy
      puts "Deploying the site to Github"
      system "bin/deploy"
    end

    desc "version", "Show Proteus version"
    def version
      version_number = Proteus::VERSION
      puts "Proteus #{version_number}"
    end
  end
end
