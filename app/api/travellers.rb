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
          # binding.pry
          
          traveller = Traveller.find(params[:id])
          traveller.self_url = "http://#{request.host_with_port}#{request.path_info}"
          traveller.extend(TravellerRepresenter)
        end
      end 
    end
    
  end
end