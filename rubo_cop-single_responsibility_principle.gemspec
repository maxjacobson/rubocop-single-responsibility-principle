# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubo_cop/single_responsibility_principle/version'

Gem::Specification.new do |spec|
  spec.name          = "rubocop-single-responsibility-principle"
  spec.version       = RuboCop::SingleResponsibilityPrinciple::VERSION
  spec.authors       = ["Max Jacobson"]
  spec.email         = ["max@hardscrabble.net"]

  spec.summary       = %q{Enforcer of single responsibility principle}
  spec.description   = %q{This is a probably-facetious RuboCop extension which requires all Ruby classes to have only one public interface.}
  spec.homepage      = "https://github.com/maxjacobson/rubocop-single-responsibility-principle"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rubocop", "~> 0.32"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
