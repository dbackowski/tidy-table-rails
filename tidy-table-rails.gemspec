# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tidy/table/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "tidy-table-rails"
  spec.version       = Tidy::Table::Rails::VERSION
  spec.authors       = ["dbackowski"]
  spec.email         = ["damianbackowski@gmail.com"]
  spec.summary       = %q{Create a HTML table from JSON that can be sorted, selected, and post-processed using a simple callback.}
  spec.description   = %q{Asset pipeline bundling of the tidy table jquery plugin.}
  spec.homepage      = "https://github.com/dbackowski/tidy-table-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.test_files    = Dir["spec/**/*"]

  spec.add_runtime_dependency 'jquery-rails', '>= 3.0.0', '< 5.0'
  spec.add_dependency "rails", "~> 4.2.5"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rails', '4.2.5'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'capybara'
end
