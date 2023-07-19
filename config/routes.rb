Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'home#index'
  resources :posts
  get '/user_posts/:user_name', to: 'posts#user_posts', as: :user_posts
end
