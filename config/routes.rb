Rails.application.routes.draw do
  match('representatives', {:via => :get, :to => 'representatives#index'})
  match('representatives', {:via => :post, :to => 'representatives#create'})
  match('representatives/new', {:via => :get, :to => 'representatives#new'})
  match('representatives/:id', {:via => :get, :to => 'representatives#show'})
end
