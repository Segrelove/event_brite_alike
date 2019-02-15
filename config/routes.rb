Rails.application.routes.draw do
  root :to => 'events#index'
  
  devise_for :users

  resources :users, only: [:show]

  resources :events do 
    resources :participations, only: [:index, :new, :create, :show]
  end
 
end
