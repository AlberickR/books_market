Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'    
  end

  root 'books#index'
  resources :books

  get 'books/', to: 'books#show', as: 'my_books'
  get 'users/:id/profile', to: 'users#show', as: 'profile'
  get 'purchases/', to: 'purchases#index', as: 'my_purchases'
  get 'sells/', to: 'sells#index', as: 'my_sells'
end
