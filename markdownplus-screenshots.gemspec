# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'markdownplus/screenshots/version'

Gem::Specification.new do |spec|
  spec.name          = "markdownplus-screenshots"
  spec.version       = Markdownplus::Screenshots::VERSION
  spec.authors       = ["Christopher Petersen"]
  spec.email         = ["chris@petersen.io"]
  spec.description   = %q{Adds screenshot capabilities to markdownplus}
  spec.summary       = %q{Adds screenshot capabilities to markdownplus}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "markdownplus"
  spec.add_dependency "uuid"
  spec.add_dependency "webshot"
end
