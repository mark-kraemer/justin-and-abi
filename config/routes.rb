JustinAndAbi::Application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions, only: :create

  root 'guests#new'
  resources :guests, only: [:create, :index]
  get 'thankyou' => 'guests#thankyou', as: :thankyou
end
