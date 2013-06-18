require 'spec_helper'

describe Traveller do
  
  it 'should reject an invalid email address' do
    traveller = Traveller.new :first_name => "Joe", :last_name => "Traveller", :email => "fee_foo_fum"
    traveller.valid?.should_not be_true
  end
  
end
