require "minitest/autorun"
require "minitest/pride"
require "mocha/setup"

require File.expand_path '../../lib/berks_effit.rb', __FILE__


module BerksEffit
  module TestHelpers
    def self.setup
      ::FileUtils.mkdir(File.join("./test", "support", "cookbooks"), :noop => true)
    end
  end
end
