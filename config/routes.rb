JustinAndAbi::Application.routes.draw do
  root 'guests#new'
  resources :guests, only: :create
  get 'thankyou' => 'guests#thankyou', as: :thankyou
end
