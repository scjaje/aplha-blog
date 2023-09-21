Rails.application.routes.draw do
  root 'articles#index'
  get 'about', to: 'pages#about'
  resources :articles
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
end
