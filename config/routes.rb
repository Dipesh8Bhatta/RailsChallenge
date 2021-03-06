Rails.application.routes.draw do
  get 'consignments/index'
  resources :consignments do
    collection {post :import}
  end
  resources :users
  resources :home
  resources :sessions, only: [:new, :create, :destroy]
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'chart', to: 'home#chart', as: 'chart'

  post 'search', to: 'consignments#search', as: 'search'

end
