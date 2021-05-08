Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
<<<<<<< Updated upstream
  devise_for :users
=======
  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
  resources :users, only: :show
>>>>>>> Stashed changes
end
