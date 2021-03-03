Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#trending'
  get '/topRated', to: 'static_pages#topRated'
  get '/newArrivals', to: 'static_pages#newArrivals'
  get '/contact', to: 'static_pages#contact'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/add', to: "static_pages#add"
  get '/signup', to: 'users#new'
end
