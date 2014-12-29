require "spec_helper"

describe Proteus do
  before do
    @proteus = Proteus::Kit.new
  end

  it "completes the url" do
    url = @proteus.url("test")
    expect(url).to eq("git@github.com:thoughtbot/proteus-test.git")
  end

  it "returns a friendly message if the repo doesn't exist" do
    expect(@proteus.new('invalid')).to eq("A thoughtbot repo doesn't exist with that name")
  end
end
