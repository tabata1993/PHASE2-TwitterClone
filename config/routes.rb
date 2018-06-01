Rails.application.routes.draw do
  root to: 'narrates#home'
  resources :narrates do
    collection do
      post :confirm
    end
  end
end
