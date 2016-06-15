# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'financial_data_pull/version'

Gem::Specification.new do |spec|
  spec.name          = "financial_data_pull"
  spec.version       = FinancialDataPull::VERSION
  spec.authors       = ["tmb41"]
  spec.email         = ["tylor.balson@gmail.com"]

  spec.summary       = %q{Displays simple CLI to quickly pull important financial metrics for some 
    of the most popular stocks, or also allows for any ticker to be inputted and pulled.}
  spec.homepage      = "https://github.com/tmb41/tylor-cli-gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"

end
