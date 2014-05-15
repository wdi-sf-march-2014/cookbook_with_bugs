CookBook::Application.routes.draw do
	root to: 'recipes#index'

  resources :recipes
  resources :ingredients

  resources :users, only: [:show, :new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new'
  get'signin', to: 'sessions#new'
  delete 'signout', to: 'sessions#destroy'
  
end

