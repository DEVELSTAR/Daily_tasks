Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'home#index'
  resources :posts
  get 'ayan_posts', to: 'posts#ayan_posts'
  get 'anam_posts', to: 'posts#anam_posts'
  get 'neha_posts', to: 'posts#neha_posts'
end
