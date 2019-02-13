Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'events#index'
  
  devise_for :users

  resources :users, only: [:show]

  resources :events do 
    resources :participations, only: [:index, :new, :create, :show]
  end
 
end
