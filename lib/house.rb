class House

  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def rooms
    @rooms
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.select do |element|
      if element == category
        @rooms.element
      end
    end
  end

end
# require './lib/room'
# require './lib/house'
# house = House.new("$400000", "123 sugar lane")
# room_1 = Room.new(:bedroom, 10, 13)
# room_2 = Room.new(:bedroom, 11, 15)
# room_3 = Room.new(:living_room, 25, 15)
# room_4 = Room.new(:basement, 30, 41)
# house.add_room(room_1)
# house.add_room(room_2)
# house.add_room(room_3)
# house.add_room(room_4)
