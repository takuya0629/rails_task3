Rails.application.routes.draw do
  root to: 'users#toppage'
  resources :sessions, only: %w!new create destroy!
  
  resources :users 
  
  resources :pictures do 
    collection do 
      post :confirm
    end
  end
end
