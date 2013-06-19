class Traveller < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name
  attr_accessor :base_url
  validates :email, :presence => true, :email => true
end
