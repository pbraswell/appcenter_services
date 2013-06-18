class Traveller < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name
  validates :email, :presence => true, :email => true
end
