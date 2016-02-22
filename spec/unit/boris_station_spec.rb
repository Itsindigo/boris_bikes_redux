require 'spec_helper'

describe 'boris_station' do

  subject(:dock) {BorisStation.new("Aldgate East")}

  it "should fill a docking station to capacity" do
    dock.load_station
    expect(dock.bikes.length).to eq(20)
  end
end
