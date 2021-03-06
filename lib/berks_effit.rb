require_relative "berks_effit/version"
require_relative "berks_effit/file_utils"

module BerksEffit
  class Init
    def initialize(options)
      @nuke = options.fetch(:nuke)
    end

    # destroy the berks cookbook directory
    def run
      BerksEffit::FileUtils.nuke_it_all
    end
  end
end
