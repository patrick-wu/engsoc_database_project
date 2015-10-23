Rails.application.routes.draw do
  root 'pages#home'
  get '/home', to: 'pages#home'

  resources :clubs, except: [:new, :destroy]
  get '/affiliate', to: 'clubs#new'
end
