Rails.application.routes.draw do
  root :to => 'home#index'
  get '/about' => 'home#about'
  get '/contact' => 'home#contact'

  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :except => [:edit]

  resources :kids, :schools, :trips, :suburbs

  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete 'login' => 'session#destroy'
  

end
