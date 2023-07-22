Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }
  resources :users, only: [:index, :show, :update]
  delete 'users/delete_user/:id', to: 'users#delete_user'
  
  get 'home/index'
  root 'home#index'
  resources :posts
  get '/user_posts/:user_name', to: 'posts#user_posts', as: :user_posts
end
