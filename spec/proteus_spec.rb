require "proteus"

describe "kit" do
  it "completes the url" do
    url = Proteus::Kit.url("test")
    expect(url).to eq("git://github.com/thoughtbot/proteus-test.git")
  end

  it "is cloned if exists" do
    command = Proteus::Kit.clone("test")
    url = Proteus::Kit.url("test")
    expect(command).to eq("git clone #{url} test")
  end
end
