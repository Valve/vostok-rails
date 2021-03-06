# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vostok/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "vostok-rails"
  spec.version       = Vostok::Rails::VERSION
  spec.authors       = ["Valentin Vasilyev"]
  spec.email         = ["iamvalentin@gmail.com"]
  spec.description   = %q{Sick pg import for rails}
  spec.summary       = %q{Sick pg import for rails}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", "~>3.0"
  spec.add_dependency "vostok", "0.0.3"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.9"
end
