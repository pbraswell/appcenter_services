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
    self_url
  end
end