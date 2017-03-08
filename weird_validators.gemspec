# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'weird_validators/version'

Gem::Specification.new do |spec|
  spec.name          = "weird_validators"
  spec.version       = WeirdValidators::VERSION
  spec.authors       = ["Papa Pathe SENE"]
  spec.email         = ["pathe.sene@gmail.com"]

  spec.summary       = %q{Add weird valiators to active model..}
  spec.description   = %q{Lot of weird validators you may need in your daily rails coding.}
  spec.homepage      = "https://github.com/PapePathe/weird_validators"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/weird_validators/extconf.rb"]

  spec.add_dependency 'activemodel'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "minitest", "~> 5.0"
end
