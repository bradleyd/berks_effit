require_relative "test_helper"

class TestFileUtils < Minitest::Test
  def setup
    @effit  = BerksEffit::FileUtils
  end

  def test_should_find_berks_directory
    assert @effit.cookbook_directory_exist?
  end

  def test_nuke_cookbook_directoy
    @effit.stubs(:cookbook_directory).returns("/tmp/foo")
    assert_equal  "You have already effit!", @effit.nuke_cookbook_directory
  end
end
