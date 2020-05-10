Rails.application.routes.draw do
  devise_for :users
  resources :recipes do
    resources :quantities, only: [:create]
    resources :ingredients, only: [:new, :create, :edit, :update]
    resources :comments, only: [:create]
  end
  resources :ingredients, only: [:index, :destroy]
  resources :quantities, only: [:destroy]
  resources :comments, only: [:destroy]
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  root to: 'recipes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
