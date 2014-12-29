require "proteus/version"
require "thor"

module Proteus
  class Kit < Thor
    include Thor::Actions

    desc "url", "gets the git url"
    def url(kit)
      "git@github.com:thoughtbot/proteus-#{kit}.git"
    end

    desc "new", "runs the command to clone a particular kit"
    def new(kit_name, repo_name = nil)
      repo_name ||= kit_name

      if system "git ls-remote #{url(kit_name)} #{repo_name} > /dev/null 2>&1"
        puts "Starting a new proteus-#{kit_name} project in #{repo_name}"
        system "git clone #{url(kit_name)}#{' ' + repo_name}"
      else
        "A thoughtbot repo doesn't exist with that name"
      end
    end

    desc "setup", "Sets up the project"
    def setup
      puts "Setting up your project"
      system ". bin/setup"
    end

    desc "server", "Runs the server"
    def server
      puts "Starting the server"
      system ". bin/server"
    end

    desc "deploy", "Deploys the site to Github"
    def deploy
      puts "Deploying the site to Github"
      system ". bin/deploy"
    end

    desc "version", "Show Proteus version"
    def version
        say "Proteus #{Proteus::VERSION}"
    end
  end
end
