# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'run-swim-hike-nyc/version'

Gem::Specification.new do |spec|
  spec.name          = "run-swim-hike-nyc"
  spec.version       = RunSwimHike::VERSION
  spec.authors       = ["the-widget"]
  spec.email         = ["brennenawana108ny@gmail.com"]

  spec.summary       = %q{Discover places to Run, Swim or Hike in NYC!}
  spec.homepage      = "https://github.com/the-widget/run-swim-hike-nyc"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ["run-swim-hike"]
  spec.require_paths = ["lib", "lib/run-swim-hike-nyc"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "open-uri"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rubygems"
  spec.add_development_dependency "launchy"
end
