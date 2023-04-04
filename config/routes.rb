Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  # Defines the root path route ("/")
  # root "articles#index"
  #devise_scope :user do
    #get '/users/sign_out' => 'devise/sessions#destroy'
  #end
  
  get 'homes/about', to: 'homes#about', as: 'about'
end