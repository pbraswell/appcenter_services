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

require 'spec_helper'

describe Traveller do
  
  it 'should reject an invalid email address' do
    traveller = Traveller.new :first_name => "Joe", :last_name => "Traveller", :email => "fee_foo_fum"
    traveller.valid?.should_not be_true
  end
  
end
