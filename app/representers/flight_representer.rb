require 'roar/representer/json'
require 'roar/representer/json/hal'
require 'roar/representer/feature/hypermedia'

module FlightRepresenter
  include Roar::Representer::JSON::HAL
  include Roar::Representer::Feature::Hypermedia

  property :id
  property :destination
  property :flight_time
  property :origin

  link :self do
    resource_url
  end
end