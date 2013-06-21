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
  
end
