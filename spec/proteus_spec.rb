require "spec_helper"

describe Proteus do
  before do
    remove_dummy_repo
    @proteus = Proteus::Kit.new
    @repos = Proteus::REPOS
  end

  it "has a list of repos" do
    expect(@repos).not_to be_nil
  end

  it "gets repos in the list" do
    expect(@repos.size).to be > 0
  end

  it "gets the kit name" do
    expect(@proteus.name("jekyll")).to eq("Jekyll Starter")
  end

  it "gets the Git url" do
    url = "https://github.com/thoughtbot/proteus-middleman.git"
    expect(@proteus.url("middleman")).to eq(url)
  end

  it "displays a list of repos" do
    expect { @proteus.list }.to output().to_stdout
  end

  it "displays a friendly message if the kit isn't in the list" do
    message = "Kit not found. Run `proteus list` to see available kits.\n"
    expect { @proteus.new("invalid") }.to output(message).to_stdout
  end

  it "displays the current version" do
    version = Proteus::VERSION
    expect { @proteus.version }.to output("Proteus #{version}\n").to_stdout
  end

  def remove_dummy_repo
    FileUtils.rm_rf(Dir["./spec/dummy"])
  end
end
