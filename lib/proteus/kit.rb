module Proteus
  class Kit
    def self.url(kit)
      "git://github.com/thoughtbot/proteus-#{kit}.git"
    end

    def self.clone(kit, name = nil)
      name ||= kit
      "git clone #{url(kit)}#{' ' + name}"
    end
  end
end
