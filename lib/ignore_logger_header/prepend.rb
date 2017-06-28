# frozen_string_literal: true

module IgnoreLoggerHeader
  def add_log_header(file)
    # file.write(
    #   "# Logfile created on %s by %s\n" % [Time.now.to_s, Logger::ProgName]
    # ) if file.size == 0
  end
end
