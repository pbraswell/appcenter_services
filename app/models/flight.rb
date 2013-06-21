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

class Flight < ActiveRecord::Base
  attr_accessible :departs_at, :destination, :flight_time, :origin
  validates_presence_of :departs_at, :destination, :flight_time, :origin
end
