Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :posts
  get 'posts_by_name/:name', to: 'posts#by_name', as: 'posts_by_name'
end
