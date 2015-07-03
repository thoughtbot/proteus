# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "proteus/version"

Gem::Specification.new do |spec|
  spec.name          = "proteus-kits"
  spec.version       = Proteus::VERSION
  spec.authors       = ["Joshua Ogle"]
  spec.email         = ["support@thoughtbot.com"]
  spec.summary       = %q{Starter kits to help you prototype faster}
  spec.description   = %q{A collection of useful starter kits to help you prototype faster}
  spec.homepage      = "http://github.com/thoughtbot/proteus"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executable    = "proteus"
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3"

  spec.add_dependency "thor"
end
