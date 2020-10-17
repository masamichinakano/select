Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }  
  root to: "members#index"
  resources :members do
    collection do
      get "player", "pitch", "catch", "inside", "outside"
    end
  end
  resources :matchs do
    resources :fronts
    resources :backs
    collection do
      get "ofence", "search"
    end
  end

  resources :historys do
    collection do
      get "search"
    end
  end

  resources :schedules do
    resources :attends
    collection do
      get "search"
    end

  end
  
end
