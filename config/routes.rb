Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  get '/home', to: 'pages#home'
  get '/legal', to: 'pages#terms'
  get '/privacy', to: 'pages#privacy'
  root "pages#home"
end
