Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/users/:id/calendar', to: 'users#calendar', as: 'calendar'
  resources :users, only: [:show]
  resources :hospitals, only: [:index, :show]
  resources :events, only: [:index, :show, :new, :create, :update, :destroy]
  resources :posts, only: [:index, :new, :create, :destroy]
  resources :posts, only: :show do
    resources :replies, only: :create
  end

end
