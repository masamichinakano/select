Rails.application.routes.draw do
  devise_for :users
  root to: "members#index"
  resources :members do
    collection do
      get "player"
    end
  end
  resources :orders
  
end
