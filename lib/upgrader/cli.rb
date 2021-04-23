require 'optparse'

module Upgrader
  class CLI
    def self.start
      @options = {}

      OptionParser.new do |opts|
        opts.on("-v", "--verbose", "Show extra information") do
          @options[:verbose] = true
        end
        opts.on("-c", "--color", "Enable syntax highlighting") do
          @options[:syntax_highlighting] = true
        end
      end.parse!

      p @options
    end
  end
end