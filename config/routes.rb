Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'

  resources :contracts
  resources :allotments
  resources :ventures
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get 'empreendimentos' => 'ventures#index'
  get 'loteamentos' => 'allotments#index'
  get 'contratos' => 'contracts#index'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
