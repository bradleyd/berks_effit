# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'berks_effit/version'

Gem::Specification.new do |spec|
  spec.name          = "berks_effit"
  spec.version       = BerksEffit::VERSION
  spec.authors       = ["Bradley Smith"]
  spec.email         = ["brad.smith@sendgrid.com"]
  spec.description   = %q{ when all else fails...berkshel effit }
  spec.summary       = %q{ destroy the berkshelf cookbook directory }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "mocha"
  spec.add_development_dependency "minitest"
  spec.add_dependency "i18n"
end
