Rails.application.routes.draw do
  root 'static_pages#top'
  get 'users/show'
  get 'users/create'
  get 'about', to: 'static_pages#about'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
