CookBook::Application.routes.draw do
  resource :recipes, :ingredients, :users, :sessions

  route to: 'recipes#index'

  get '/signup', to: 'users/new'
  delete '/signout', to: 'sessions/destroy'
  get'/signin', to: 'sessions#new'
end

