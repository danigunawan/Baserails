Rails.application.routes.draw do
  resources :tests
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root 'homepage#home'
  get  '/help',    to: 'homepage#help'
  get  '/about',   to: 'homepage#about'
  get  '/contact', to: 'homepage#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users
  resources :account_activations, only: [:edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
