require "spec_helper"

describe Proteus do
  before do
    @proteus = Proteus::Kit.new
  end

  it "completes the url" do
    url = @proteus.url("test")
    expect(url).to eq("git@github.com:thoughtbot/proteus-test.git")
  end
end
