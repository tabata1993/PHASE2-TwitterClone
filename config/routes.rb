Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'narrates#home'
  resources :narrates do
    collection do
      post :confirm
    end
  end

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/inbox"
  end

end
