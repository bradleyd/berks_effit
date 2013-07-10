require_relative "test_helper"

class TestInit < Minitest::Test
  def setup
    @effit  = BerksEffit::Init.new(nuke: true)
  end

  def test_init_should_respond_to_run
    assert_respond_to @effit, :run
  end
end
