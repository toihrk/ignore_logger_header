# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rspec'
require 'logger'
require 'ignore_logger_header'
require 'tmpdir'

RSpec.configure do |c|
  c.around(:context, logging: true) do |example|
    Dir.mktmpdir('ignore_logger_header') do |dir|
      example.metadata[:logs_dir] = dir
      example.run
    end
  end
end
