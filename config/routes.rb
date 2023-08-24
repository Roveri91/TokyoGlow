Rails.application.routes.draw do
  get 'reviews/new'
  get 'appointments/new'

  devise_for :users
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/users/:id/calendar', to: 'users#calendar', as: 'calendar'

  resources :users, only: [:show] do
    resources :conversations, only: [:index, :show]
  end

  resources :events, only: [:index, :show, :new, :create, :update, :destroy]
  resources :hospitals, only: [:index, :show] do
    resources :reviews, only: [:create]
    resources :appointments, only: [:new, :create]
  end
  resources :posts, only: [:index, :new, :create, :destroy]
  resources :replies, only: :destroy
  resources :posts, only: :show do
    resources :replies, only: :create
  end
end
