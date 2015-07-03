require "spec_helper"

describe Proteus do
  before(:all) do
    remove_dummy_repo
    @proteus = Proteus::Kit.new
  end

  it "completes the url" do
    url = @proteus.url("test")
    expect(url).to eq("git@github.com:thoughtbot/proteus-test.git")
  end

  it "finds and download a kit" do
    kit_name = 'middleman'
    repo_name = 'spec/dummy'

    quietly do
      expect { @proteus.new(kit_name, repo_name) }.to output("Starting a new proteus-#{kit_name} project in #{repo_name}\n").to_stdout
    end
  end

  it "returns a friendly message if the repo doesn't exist" do
    expect { @proteus.new('invalid') }.to output("A thoughtbot repo doesn't exist with that name\n").to_stdout
  end

  private
    def remove_dummy_repo
      FileUtils.rm_rf(Dir["./spec/dummy"])
    end
end
