require_relative "test_helper"

class TestFileUtils < Minitest::Test
  def setup
    @effit  = BerksEffit::FileUtils
  end

  def test_should_find_berks_directory
    assert @effit.cookbook_directory_exist?
  end
end
