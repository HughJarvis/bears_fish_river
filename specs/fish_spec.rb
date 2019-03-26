require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')
require_relative('../bear.rb')
require_relative('../river.rb')

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("salmon")
  end

  def test_species_getter
    assert_equal("salmon", @fish.species)
  end


end
