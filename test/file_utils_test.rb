require_relative "test_helper"

class TestFileUtils < Minitest::Test
  def setup
    @effit  = BerksEffit::FileUtils
    @effit.stubs(:cookbook_directory).returns("./test/support/cookbooks")
    BerksEffit::TestHelpers.setup
  end

  def test_should_find_berks_directory
    actual = File.directory?("~/.test/support/cookbooks")
    assert_equal actual, @effit.cookbook_directory_exist?
  end

  def test_nuke_cookbook_directoy
    @effit.nuke_cookbook_directory
    refute File.directory?("~/.test/support/cookbooks")
  end
end
