JustinAndAbi::Application.routes.draw do
  root 'guests#new'

  resources :guests, only: :create
end