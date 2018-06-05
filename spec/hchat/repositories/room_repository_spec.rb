require_relative '../../spec_helper'

describe RoomRepository do
  it 'have name' do
    room = RoomRepository.new(name: 'Ruby')
    expect(room.name).to eq('Ruby')
  end
end
