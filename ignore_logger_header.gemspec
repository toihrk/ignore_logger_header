# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ignore_logger_header/version'

Gem::Specification.new do |s|
  s.name        = 'ignore_logger_header'
  s.version     = IgnoreLoggerHeader::VERSION
  s.authors     = ['toihrk']
  s.email       = ['toihrk@me.com']
  s.summary     = 'Utility for ignoring the header of the logger.'
  s.description = s.summary
  s.homepage    = 'https://github.com/toihrk/ignore_logger_header'
  s.license     = 'MIT'
  raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.' unless s.respond_to?(:metadata)

  s.files = `git ls-files -z`.split(?\x0).reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  s.require_paths = ['lib']

  s.add_development_dependency 'bundler', '~> 1.14'
  s.add_development_dependency 'rake', '~> 12'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'pry-doc'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rspec', '~> 3.6'
end
