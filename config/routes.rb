Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'representatives#index'})
  match('representatives', {:via => :get, :to => 'representatives#index'})
  match('representatives', {:via => :post, :to => 'representatives#create'})
  match('representatives/new', {:via => :get, :to => 'representatives#new'})
  match('representatives/:id', {:via => :get, :to => 'representatives#show'})
  match('/representatives/:id', {:via => [:patch, :put], :to => 'representatives#update'})
  match('representatives/:id/edit', {:via => :get, :to => 'representatives#edit'})
  match('/representatives/:id', {:via => :delete, :to => 'representatives#destroy'})

  match('states', {:via => :get, :to => 'states#index'})
  match('states', {:via => :post, :to => 'states#create'})
  match('/states/:id', {:via => :delete, :to => 'states#destroy'})
end
