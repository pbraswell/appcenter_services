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

require 'spec_helper'

describe Itinerary do
  pending "add some examples to (or delete) #{__FILE__}"
end
