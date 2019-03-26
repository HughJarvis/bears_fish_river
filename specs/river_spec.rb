require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class RiverTest < MiniTest::Test

  def setup
    # @river = River.new("Tay", ["salmon", "trout", "pike"])
    @river = River.new("Tay", [@fish1, @fish2, @fish3])
    @fish1 = Fish.new("salmon")
    @fish2 = Fish.new("trout")
    @fish3 = Fish.new("pike")
    @fish4 = Fish.new("bream")
  end


  def test_river_name_getter()
    assert_equal("Tay", @river.river_name)
  end


   def test_fish_stock_getter
     assert_equal([@fish1, @fish2, @fish3], @river.fish_stock)
   end
end
