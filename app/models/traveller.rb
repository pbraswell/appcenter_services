# == Schema Information
#
# Table name: travellers
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Traveller < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name
  validates :email, :presence => true, :email => true
end
