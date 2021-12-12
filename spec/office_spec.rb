require 'office'

describe Office do

  # before(:each) do
  #   @office = Office.new
  #   @meeting_room_heist = MeetingRoom.new("heist")
  #   @meeting_room_hunting = MeetingRoom.new("hunting")
  # end

  # describe "#initialize" do
  #   it 'should initialize a variable @meetings which is an array' do
  #     expect(@office.meeting_room_list).to eq []
  #   end
  # end

  # describe "#meetings" do
  #   it 'should return a list of meetings' do
  #     @office.add_meeting_room(@meeting_room)
  #     expect(@office.meeting_room_list).to eq [@meeting_room]
  #   end
  # end

  # describe "#meeting_rooms" do
  #   it 'should return a list of meetings' do
  #     @office.add_meeting_room(@meeting_room_heist)
  #     @office.add_meeting_room(@meeting_room_hunting)
  #     expect(@office.meeting_room_list).to eq [@meeting_room_heist, @meeting_room_hunting]
  #   end
  # end

  describe "#available_meeting_rooms" do
    it 'should return a list of all the available meeting rooms' do
      @meeting_room_heist.leave
      @meeting_room_hunting.enter
      @office.add_meeting_room(@meeting_room_heist.room_name)
      @office.add_meeting_room(@meeting_room_hunting.room_name)
      expect(@office.available_meeting_rooms).to eq [@meeting_room_heist]
    end
  end
end
