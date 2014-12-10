# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "backgrounder/version"

Gem::Specification.new do |s|
  s.name        = "carrierwave_backgrounder"
  s.version     = CarrierWave::Backgrounder::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Larry Sprock", "Oliver Paschke"]
  s.email       = ["larry@lucidbleu.com", "oli.paschke@appvantage.de"]
  s.homepage    = "https://github.com/app-vantage/carrierwave_backgrounder"
  s.licenses    = ["MIT"]
  s.summary     = %q{Offload CarrierWave's image processing and storage to a background process using Active Job}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.required_ruby_version = ">= 2.0.0"

  s.add_dependency "rails", ["~> 4.2.0.rc2"]
  s.add_dependency "carrierwave", ["~> 0.5"]

  s.add_development_dependency "rspec", ["~> 2.12.0"]
  s.add_development_dependency "mocha", ["~> 0.13.0"]
  s.add_development_dependency "rake"
end
