require 'spec_helper'
# require 'traveller_representer'

describe Flights::API do
  describe "GET /api/flights" do
    it "returns a list of available flights" do
      flight = Flight.create! :departs_at => Time.now, :flight_time => 2.0, :origin => "SFO", :destination => "DFW"
      # traveller.extend(TravellerRepresenter)
      get "/api/flights"
      response.body.should == Flight.all.to_json
    end
  end
end

