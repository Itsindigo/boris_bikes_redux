require 'spec_helper'

describe 'boris_bike' do

  subject(:bike) {BorisBike.new}

  it "should initialise with working attribute" do
    expect(bike.working?).to eq(true)
  end
end
