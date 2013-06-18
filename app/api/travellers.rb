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
          Traveller.find(params[:id])
        end
      end 
    end
    
  end
end