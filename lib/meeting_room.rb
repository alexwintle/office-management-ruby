class MeetingRoom

  def initialize(room_name = nil)
    @room_name = room_name
    @available = true
    room_formatter
  end

  attr_accessor :room_name, :available

  def room_formatter
    {
      :room_name => @room_name,
      :available? => @available
    }
  end

  def enter
    raise "This room is already in use" if (!@available)
    room_formatter
    @available = false
  end

  def leave
    room_formatter
    @available = true
  end

end
