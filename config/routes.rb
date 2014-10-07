# == Route Map
#
#      Prefix Verb   URI Pattern                 Controller#Action
#        root GET    /                           home#index
#       about GET    /about(.:format)            home#about
#     contact GET    /contact(.:format)          home#contact
#   edit_user GET    /users/edit(.:format)       users#edit
#       users GET    /users(.:format)            users#index
#             POST   /users(.:format)            users#create
#    new_user GET    /users/new(.:format)        users#new
#        user GET    /users/:id(.:format)        users#show
#             PATCH  /users/:id(.:format)        users#update
#             PUT    /users/:id(.:format)        users#update
#             DELETE /users/:id(.:format)        users#destroy
#        kids GET    /kids(.:format)             kids#index
#             POST   /kids(.:format)             kids#create
#     new_kid GET    /kids/new(.:format)         kids#new
#    edit_kid GET    /kids/:id/edit(.:format)    kids#edit
#         kid GET    /kids/:id(.:format)         kids#show
#             PATCH  /kids/:id(.:format)         kids#update
#             PUT    /kids/:id(.:format)         kids#update
#             DELETE /kids/:id(.:format)         kids#destroy
#     schools GET    /schools(.:format)          schools#index
#             POST   /schools(.:format)          schools#create
#  new_school GET    /schools/new(.:format)      schools#new
# edit_school GET    /schools/:id/edit(.:format) schools#edit
#      school GET    /schools/:id(.:format)      schools#show
#             PATCH  /schools/:id(.:format)      schools#update
#             PUT    /schools/:id(.:format)      schools#update
#             DELETE /schools/:id(.:format)      schools#destroy
#       trips GET    /trips(.:format)            trips#index
#             POST   /trips(.:format)            trips#create
#    new_trip GET    /trips/new(.:format)        trips#new
#   edit_trip GET    /trips/:id/edit(.:format)   trips#edit
#        trip GET    /trips/:id(.:format)        trips#show
#             PATCH  /trips/:id(.:format)        trips#update
#             PUT    /trips/:id(.:format)        trips#update
#             DELETE /trips/:id(.:format)        trips#destroy
#       login GET    /login(.:format)            session#new
#             POST   /login(.:format)            session#create
#             DELETE /login(.:format)            session#destroy
#

Rails.application.routes.draw do
  root :to => 'home#index'
  get '/about' => 'home#about'
  get '/contact' => 'home#contact'

  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :except => [:edit]

  resources :kids, :schools
  resources :trips do
	post 'book' => 'trips#book'  	
  end

  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete 'login' => 'session#destroy'
  

end
