Rails.application.routes.draw do
  devise_for :users
  resources :recipes, only: [:index, :show, :new, :create, :edit, :update] do
    resources :quantities, only: [:create]
  end
  resources :ingredients, only: [:create]
  root to: 'recipes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
