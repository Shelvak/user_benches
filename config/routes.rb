Rails.application.routes.draw do
  resources :user_benches, only: [:index, :create]

  root 'user_benches#index'
end
