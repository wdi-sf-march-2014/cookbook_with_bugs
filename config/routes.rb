CookBook::Application.routes.draw do
  resources :recipes, :ingredients, :users, :sessions

  root to: 'recipes#index'

  get 'signup', to: 'users#new',  as: 'signup'
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get'signin', to: 'sessions#new', as: 'signin'
end

#    Prefix Verb   URI Pattern                     Controller#Action
#         recipes GET    /recipes(.:format)              recipes#index
#                 POST   /recipes(.:format)              recipes#create
#      new_recipe GET    /recipes/new(.:format)          recipes#new
#     edit_recipe GET    /recipes/:id/edit(.:format)     recipes#edit
#          recipe GET    /recipes/:id(.:format)          recipes#show
#                 PATCH  /recipes/:id(.:format)          recipes#update
#                 PUT    /recipes/:id(.:format)          recipes#update
#                 DELETE /recipes/:id(.:format)          recipes#destroy
#     ingredients GET    /ingredients(.:format)          ingredients#index
#                 POST   /ingredients(.:format)          ingredients#create
#  new_ingredient GET    /ingredients/new(.:format)      ingredients#new
# edit_ingredient GET    /ingredients/:id/edit(.:format) ingredients#edit
#      ingredient GET    /ingredients/:id(.:format)      ingredients#show
#                 PATCH  /ingredients/:id(.:format)      ingredients#update
#                 PUT    /ingredients/:id(.:format)      ingredients#update
#                 DELETE /ingredients/:id(.:format)      ingredients#destroy
#           users GET    /users(.:format)                users#index
#                 POST   /users(.:format)                users#create
#        new_user GET    /users/new(.:format)            users#new
#       edit_user GET    /users/:id/edit(.:format)       users#edit
#            user GET    /users/:id(.:format)            users#show
#                 PATCH  /users/:id(.:format)            users#update
#                 PUT    /users/:id(.:format)            users#update
#                 DELETE /users/:id(.:format)            users#destroy
#        sessions GET    /sessions(.:format)             sessions#index
#                 POST   /sessions(.:format)             sessions#create
#     new_session GET    /sessions/new(.:format)         sessions#new
#    edit_session GET    /sessions/:id/edit(.:format)    sessions#edit
#         session GET    /sessions/:id(.:format)         sessions#show
#                 PATCH  /sessions/:id(.:format)         sessions#update
#                 PUT    /sessions/:id(.:format)         sessions#update
#                 DELETE /sessions/:id(.:format)         sessions#destroy
#            root GET    /                               recipes#index
#          signup GET    /signup(.:format)               users#new
#         signout DELETE /signout(.:format)              sessions#destroy
#          signin GET    /signin(.:format)               sessions#new