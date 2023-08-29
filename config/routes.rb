Rails.application.routes.draw do
  root "pages#home"

  #Devise
  devise_for :users, controllers: { registrations: 'registrations' },
                      path: '',
                      path_names: { sign_in: 'login',
                                    sign_out: 'logout',
                                    sign_up: 'registrate' }

  # Vistas estaticas
  get '/home', to: 'pages#home'
  get '/legal', to: 'pages#terms'
  get '/privacy', to: 'pages#privacy'
  resources :contacts, only: [:new, :create]
end
