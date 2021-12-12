require 'meeting_room'

class Office

  # def initialize(meeting_room = MeetingRoom.new)
  #   @meeting_room = meeting_room
  #   @meeting_room_list = []
  # end

  attr_accessor :meeting_room_list, :meeting_room

  def available_meeting_rooms
     if @meeting_room.available
  end

  def add_meeting_room(meeting_room)
    @meeting_room_list << meeting_room
  end
end