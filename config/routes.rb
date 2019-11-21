Rails.application.routes.draw do
  root to: 'users#toppage'
  resources :users 

  resources :favorites, only: [:create, :destroy, :index]

  resources :sessions, only: %w!new create destroy!
  
  resources :pictures do 
    collection do 
      post :confirm
      get :user_favorites
    end
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
