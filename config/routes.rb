Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
<<<<<<< Updated upstream
  resources :rooms, only: [:new, :create]
=======
>>>>>>> Stashed changes
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
end
