require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../lib/room'

class RoomTest < Minitest::Test

  def setup
    @room = Room.new(:bedroom, 10, 13)
  end

  def test_does_it_exist

  assert_instance_of Room, @room
  end

  def test_does_category_work

    assert_equal :bedroom, @room.category
  end

  def test_does_area_work

    assert_equal 130, @room.area
  end

end
