Rails.application.routes.draw do
  devise_for :users
  get 'articles/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :articles, only: :index
  resources :articles, only: %i[index show]
end
