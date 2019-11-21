Rails.application.routes.draw do
  root to: 'users#toppage'
  resources :users 

  resources :favorites, only: [:create, :destroy]

  resources :sessions, only: %w!new create destroy!
  
  resources :pictures do 
    collection do 
      post :confirm
    end
  end
end
