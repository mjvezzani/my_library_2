Rails.application.routes.draw do

  root to: 'books#index'

  resources :books
  resources :friends

end
