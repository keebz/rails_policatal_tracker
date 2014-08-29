Rails.application.routes.draw do
  match('representatives', {:via => :get, :to => 'representatives#index'})
  match('representatives', {:via => :post, :to => 'representatives#create'})
  match('representatives/new', {:via => :get, :to => 'representatives#new'})
  match('representatives/:id', {:via => :get, :to => 'representatives#show'})
  match('/representatives/:id', {:via => [:patch, :put], :to => 'representatives#update'})
  match('representatives/:id/edit', {:via => :get, :to => 'representatives#edit'})
  match('/representatives/:id', {:via => :delete, :to => 'representatives#destroy'})

  match('states', {:via => :get, :to => 'states#index'})
  match('states', {:via => :post, :to => 'states#create'})
  match('states/new', {:via => :get, :to => 'states#new'})
  match('states/:id', {:via => :get, :to => 'states#show'})
  match('/states/:id', {:via => [:patch, :put], :to => 'states#update'})
  match('states/:id/edit', {:via => :get, :to => 'states#edit'})
  match('/states/:id', {:via => :delete, :to => 'states#destroy'})
end
