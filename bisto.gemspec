# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
Gem::Specification.new do |s|
  s.name        = "bisto"
  s.version     = "0.0.4"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Juris Galang", "Alastair Brunton"]
  s.email       = ["info@simplyexcited.co.uk"]
  s.homepage    = "http://github.com/pyrat/solon"
  s.summary     = "Associate Rails models with gravatar resources"
  s.description = "Associate Rails models with gravatar resources"
 
  s.required_rubygems_version = ">= 1.3.1"
  s.require_path = 'lib'
  s.files       = `git ls-files`.split("\n")
end