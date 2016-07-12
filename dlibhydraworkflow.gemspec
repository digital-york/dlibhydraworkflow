# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dlibhydraworkflow/version'

Gem::Specification.new do |spec|
  spec.name          = 'dlibhydraworkflow'
  spec.version       = Dlibhydraworkflow::VERSION
  spec.authors       = ["Frank Feng"]
  spec.email         = ["frank.feng@york.ac.uk"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{Workflow processors for York Digital Library and related projects}
  spec.description   = %q{Using this gem will provide various re-usable fedora-specific file processors.}
  spec.homepage      = 'https://github.com/digital-york/dlibhydraworkflow'
  spec.license       = 'APACHE2'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'active_fedora',      '~> 10.0.0.beta2'
  spec.add_dependency 'curation_concerns',  '~> 1.0.0'
  spec.add_dependency 'dlibhydra',          '~> 1.0.0'
  spec.add_development_dependency 'bundler',     '~> 1.8'
  spec.add_development_dependency 'rake',        '~> 10.0'
  spec.add_development_dependency 'rspec',       '~> 3.1'
  spec.add_development_dependency 'rspec-rails', '~> 3.1'
end
