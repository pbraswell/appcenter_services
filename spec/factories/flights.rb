# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :flight do
    departs_at Time.now
    flight_time 2.5
    origin "ORF"
    destination "SFO"   
  end
end