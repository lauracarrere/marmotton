Rails.application.routes.draw do
  devise_for :users
  resources :recipes do
    resources :quantities, only: [:create]
    resources :ingredients, only: [:new, :create, :destroy, :edit, :update]
  end
  resources :quantities, only: [:destroy]
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  root to: 'recipes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
