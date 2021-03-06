# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth/polity/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-polity"
  spec.version       = Omniauth::Polity::VERSION
  spec.authors       = ["Eben"]
  spec.email         = ["eben.lowe@gmail.com"]

  spec.summary       = %q{OmniAuth strategy for Polity.}
  spec.description   = %q{Enthusiastick's single sign on client.}
  spec.homepage      = "https://github.com/enthusiastick/omniauth-polity"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "omniauth-oauth2", "~> 1.4"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "mocha", "~> 1.2"
  spec.add_development_dependency "pry", "~> 0.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "vcr", "~> 3.0"
end
