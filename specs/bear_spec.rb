require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish')

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Barney", "brown")
    @river = River.new("Eden", ["trout", "trout", "trout"])
  end

  def test_roar
    assert_equal("ROAR!", @bear.roar)
  end
end
