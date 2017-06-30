# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'is_bullshit/version'

Gem::Specification.new do |spec|
  spec.name          = "is_bullshit"
  spec.version       = IsBullshit::VERSION
  spec.authors       = ["Alex Ford"]
  spec.email         = ["alexford87@me.com"]

  spec.summary       = "Call bullshit on stuff"
  spec.description   = "Poorly monkeypatches Object for bullshit falsiness checks"
  spec.homepage      = "https://github.com/alexford/is_bullshit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
