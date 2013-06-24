require 'flight'

module Flights
  
  class API < Grape::API
    version 'v1', using: :header, vendor: 'flight'
    format :json
    prefix "api"
    
    resource :flights do

      desc "Return a list of available flights"
      # GET /api/flights
      get do
        Flight.all
      end
    end
  end
end