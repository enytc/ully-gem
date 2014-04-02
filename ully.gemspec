# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ully/version'

Gem::Specification.new do |spec|
  spec.name          = "ully"
  spec.version       = Ully::VERSION
  spec.authors       = ["Christopher EnyTC"]
  spec.email         = ["chris.enytc@gmail.com"]
  spec.summary       = %q{Ruby Gem for abstracting the use of Ully API.}
  spec.description   = %q{Ruby Gem for abstracting the use of Ully API. Manage your favorite links easily and quickly on Ully.}
  spec.homepage      = "https://github.com/enytc/ully-gem"
  spec.license       = "BSD"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_runtime_dependency "httparty", "~> 0.13"

  spec.add_development_dependency "rspec", "~> 2"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.2"
end
