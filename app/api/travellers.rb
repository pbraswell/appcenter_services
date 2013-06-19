require 'traveller'

module Travellers
  
  class API < Grape::API
    version 'v1', using: :header, vendor: 'traveller'
    format :json
    prefix "api"
    
    resource :travellers do

    desc "Return a Traveller"
    # GET /api/traveller/:id
      params do
        requires :id, type: Integer, desc: "Traveller id."
      end
      route_param :id do
        get do
          traveller = Traveller.find(params[:id]).decorate context: {base_url: "http://#{request.host_with_port}"}
          traveller.extend(TravellerRepresenter)
        end
      end 
    end
    
  end
end