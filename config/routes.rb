Rails.application.routes.draw do
  root 'static_pages#trending'
  get '/topRated', to: 'static_pages#topRated'
  get '/newArrivals', to: 'static_pages#newArrivals'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
end
