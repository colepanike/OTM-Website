Rails.application.routes.draw do
  root 'pages#home'
  
  get 'help' => 'pages#help'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  
  get    'login' => 'sessions#new'
  post   'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'signup' => 'users#new'
  get 'myaccount' => 'users#myaccount'
  resources :users
  # resources :articles
  # resources :events
  # resources :locations
end
