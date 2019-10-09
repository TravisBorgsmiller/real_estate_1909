require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../lib/house'
require_relative '../lib/room'

class HouseTest < Minitest::Test

  def setup
    @house = House.new("$400000", "123 sugar lane")
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
    @room_3 = Room.new(:living_room, 25, 15)
    @room_4 = Room.new(:basement, 30, 41)
  end

  def test_does_it_exist

    assert_instance_of House, @house
  end

  def test_house_price

    assert_equal "$400000", @house.price
  end

  def test_address

    assert_equal "123 sugar lane", @house.address
  end

  def test_rooms

    assert_equal [], @house.rooms
  end

end
