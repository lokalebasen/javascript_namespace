# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'javascript_namespace/version'

Gem::Specification.new do |spec|
  spec.name          = "javascript_namespace"
  spec.version       = JavascriptNamespace::VERSION
  spec.authors       = ["Niels Buus"]
  spec.email         = ["nielsbuus@gmail.com"]
  spec.summary       = "A tiny JavaScript library for dividing your code into namespaces wrapped as a Rails asset"
  spec.description   = <<-DESC
  To use it, you must require namespace in your JavaScript manifest. Add this line to your application.js file:

      //= require namespace

  DESC
  spec.homepage      = "http://github.com/nielsbuus/namespace"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'railties', ">= 3.1", "< 5.0"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
