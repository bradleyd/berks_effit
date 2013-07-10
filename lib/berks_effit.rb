require "berks_effit/version"

module BerksEffit
  class Init
    def initialize(args)
      @nuke = options.fetch(:nuke)
    end

    # destroy the berks cookbook directory
    def run
      
    end
  end
end
