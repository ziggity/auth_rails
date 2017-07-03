Rails.application.routes.draw do

 get '/signup' => 'users#new'
 post '/users' => 'users#create'

 get '/signin' => 'sessions#new'
 post '/signin' => 'sessions#create'
 get '/signout' => 'sessions#destroy'
  root :to => 'products#index'
  resources :products do
  resources :reviews, :only => [:new, :create]
  end


end
