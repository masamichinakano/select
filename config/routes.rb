Rails.application.routes.draw do
  devise_for :users
  root to: "members#index"
  resources :members do
    collection do
      get "player", "pitch", "catch", "inside", "outside"
    end
  end
  resources :orders do
    resources :fronts
    resources :backs
    collection do
      get "ofence", "search"
    end
  end
  
end
