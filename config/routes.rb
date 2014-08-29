Rails.application.routes.draw do
  match('representatives', {:via => :get, :to => 'representatives#index'})
end
