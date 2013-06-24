AppCenterServices::Application.routes.draw do
  mount Simple::API => '/'
  mount Travellers::API => '/'
  mount Flights::API => '/'
end
