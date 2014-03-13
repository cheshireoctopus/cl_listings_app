ClListingsApp::Application.routes.draw do

  resources :listings

  root 'listings#index'

  get '/austin' => 'listings#austin'
  get '/boston' => 'listings#boston'
  get '/losangeles' => 'listings#losangeles'
  get '/newyorkcity' => 'listings#newyorkcity'

end
