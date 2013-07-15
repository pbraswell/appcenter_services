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
  alias_attribute :travellers, :passengers
  validates_presence_of :departs_at, :destination, :flight_time, :origin
  has_many :itineraries
  has_many :passengers, :through => :itineraries,
                        :class_name => 'Itinerary',
                        :foreign_key => 'traveller_id',
                        :source => :traveller
end
