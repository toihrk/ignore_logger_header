# frozen_string_literal: true

require 'spec_helper'

describe :IgnoreLoggerHeader do
  it 'should have version number' do
    expect(IgnoreLoggerHeader::VERSION).not_to be nil
  end

  describe Logger do
    it 'should not write Header', logging: true do |example|
      logs_dir = example.metadata[:logs_dir]
      logdev = File.join(logs_dir, 'logfile.log')
      logger = Logger.new(logdev)
      logline = 'IGNORE_LOGGER_HEADER'
      logger.info(logline)
      logged = File.read(logdev)
      expect(logged.split("\n").size).to eq 1
      expect(logged.include?('Logfile created on')).to be false
    end
  end
end
