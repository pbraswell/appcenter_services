# == Schema Information
#
# Table name: travellers
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  flight_id  :integer
#

require 'spec_helper'

describe Traveller do
  let!(:first_name) {"Joe"}
  let!(:last_name) {"Traveller"}
  let!(:email) {"joe.traveller@example.com"}
  
  
  it 'should reject an invalid email address' do
    traveller = Traveller.new :first_name => first_name, :last_name => last_name, :email => "fee_foo_fum"
    traveller.valid?.should_not be_true
  end
  
  it 'should allow adding flights to a Traveller model' do
    traveller = Traveller.new :first_name => first_name, :last_name => last_name, :email => email
    flight = FactoryGirl.create(:flight)
    itinerary = FactoryGirl.create(:itinerary, :flight => flight, :traveller => traveller)
    traveller.save!
    flight.save!
    itinerary.save!
    traveller.itineraries.size.should == 1
    traveller.flights.size.should == 1
  end
  
end
