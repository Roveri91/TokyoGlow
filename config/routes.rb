Rails.application.routes.draw do
  get 'appointments/new'
  devise_for :users
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"

  get '/users/:id/calendar', to: 'users#calendar', as: 'calendar'
  resources :users, only: [:show]
  resources :hospitals, only: [:index, :show] do 
    resources :appointments, only: [:new, :create]
  end
  resources :events, only: [:index, :show, :new, :update, :destroy]
  resources :posts, only: [:index, :show, :new, :create, :destroy]
  

end
