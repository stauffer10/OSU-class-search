Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'new_reviews', to: 'courses#create_reviews'
  resources :courses
  resources :reviews
  resources :difficulties

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  # handling login, logout
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
