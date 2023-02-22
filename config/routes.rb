Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
