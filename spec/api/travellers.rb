require 'spec_helper'
require 'traveller_representer'

describe Travellers::API do
  describe "GET /api/travellers/:id" do
    it "returns a traveller by id" do
      traveller = Traveller.create! :first_name => "Joe", :last_name => "Traveller", :email => "joe_traveller@example.com"
      traveller.extend(TravellerRepresenter)
      get "/api/travellers/#{traveller.id}"
      response.body.should == traveller.to_json
    end
  end
end