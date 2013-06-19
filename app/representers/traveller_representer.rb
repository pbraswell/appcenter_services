require 'roar/representer/json'
require 'roar/representer/feature/hypermedia'


module TravellerRepresenter
  include Roar::Representer::JSON
  include Roar::Representer::Feature::Hypermedia

  property :id
  property :first_name
  property :last_name
  property :email

  link :self do
    # "/api/traveller/#{id}"
    # base_url+"/api/#{Traveller.model_name.human.downcase.pluralize}/#{id}"
    resource_url
  end
end