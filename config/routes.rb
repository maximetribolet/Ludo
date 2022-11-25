Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users do
    # resources :booking, only: %i[create new]
    resources :user_ratings, only: %i[create new show index]
    resources :booking, only: %i[show index]
  end
  resources :bookings, only: %i[destroy]
  resources :user_ratings, only: %i[destroy]

  resources :user_games, only: [:destroy, :create, :new, :show]
  resources :user_games, only: [:destroy]

  get "/my_games", to: "user_games#mine", as: :mine

  resources :user_games do
    resources :bookings, only: %i[create new]
  end

  resources :game_ratings

  resources :games

  get "/dashboard", to: "pages#dashboard", as: :dashboard
end
