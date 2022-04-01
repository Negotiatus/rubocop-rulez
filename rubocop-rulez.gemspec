# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubocop_rulez/style/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-rulez"
  spec.version       = RubocopRulez::Style::VERSION
  spec.authors       = ["Negotiatus"]
  spec.email         = ["hello@negotiatus.com"]

  spec.summary       = 'Negotiatus shared Rubocop style configs.'
  spec.homepage      = 'https://github.com/negotiatus/rubocop-rulez'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop-airbnb", "~> 4.0.0"
end
