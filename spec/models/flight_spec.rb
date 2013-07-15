# == Schema Information
#
# Table name: flights
#
#  id          :integer          not null, primary key
#  departs_at  :time
#  flight_time :float
#  origin      :string(255)
#  destination :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Flight do
  
  it 'should not be a valid model if departs_at, flight_time, origin or destination aren not present' do
    flight = Flight.new
    flight.valid?.should_not be_true
  end
  
  it 'should respond (via alias) to passaengers instead of travellers' do
    traveller = Traveller.new :first_name => "first_name", :last_name => "last_name", :email => "foo@example.com"
    flight = FactoryGirl.create(:flight)
    itinerary = FactoryGirl.create(:itinerary, :flight => flight, :traveller => traveller)
    traveller.save!
    flight.save!
    itinerary.save!
    flight.passengers.size.should == 1
    flight.passengers.first.id.should == traveller.id
  end
  
end
