require "proteus"

describe "kit" do
  it "completes the kit url" do
    url = Proteus::Kit.url("test")
    expect(url).should eql("git://github.com/thoughtbot/proteus-test.git")
  end
end
