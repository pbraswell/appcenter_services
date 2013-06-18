module Simple
  class API < Grape::API
    version 'v1', using: :header, vendor: 'twitter'
    format :json
    prefix "api"
    
    resource :hello do

      desc "A very simple hello world API"
      # GET /api/hello
      get do
        response = {:hello => "world"}
        response.to_json
      end

    end
  end
end