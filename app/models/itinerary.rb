# == Schema Information
#
# Table name: itineraries
#
#  id           :integer          not null, primary key
#  traveller_id :integer
#  flight_id    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Itinerary < ActiveRecord::Base
  belongs_to :traveller
  belongs_to :flight
  # attr_accessible :title, :body
end
