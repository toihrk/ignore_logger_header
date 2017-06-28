# frozen_string_literal: true

class Logger
  class LogDevice
    prepend IgnoreLoggerHeader
  end
end
