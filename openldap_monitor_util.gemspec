# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'openldap_monitor_util/version'

Gem::Specification.new do |spec|
  spec.name          = "openldap_monitor_util"
  spec.version       = OpenldapMonitorUtil::VERSION
  spec.authors       = ["Javier Juarez"]
  spec.email         = ["javier.juarez@gmail.com"]
  spec.description   = %q{CLI application for manipulating the Monitor backend database}
  spec.summary       = %q{CLI application for manipulating the Monitor backend database}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "choice", "~> 0.1.6"
  spec.add_dependency "openldap_monitor_extractor", "~> 0.0.7"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
