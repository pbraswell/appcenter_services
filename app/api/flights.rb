require 'flight'

module Flights
  
  class API < Grape::API
    version 'v1', using: :header, vendor: 'flight'
    format :json
    prefix "api"
    
    helpers do
      
      def get_flights
        all = Flight.all
        @flights = Array.new
        all.each do |flight|
          f = flight.decorate context: {base_url: "http://#{request.host_with_port}"}
          f = f.extend(FlightRepresenter)
          @flights.push JSON.parse f.to_json
        end
        @flights
      end

    end
    
    resource :flights do

      desc "Return a list of available flights"
      # GET /api/open/flights
      get :open do
        get_flights
      end

    end
    
  end
end