require 'meeting_room'

describe "MeetingRoom" do

  before(:each) do
    @meeting_room = MeetingRoom.new("flower")
  end

  it 'should raise error if the room is already in use' do
    @meeting_room.enter
    expect { (@meeting_room.enter) }.to raise_error "This room is already in use"
  end

  describe "#leave" do
    it 'should set @available to true' do
      @meeting_room.leave
      expect(@meeting_room.available).to eq true
    end
  end
end