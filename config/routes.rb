Rails.application.routes.draw do
  resources :activations
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :services do
    resources :comments
  end
  resources :rents do
    member {get :more}
  end
  resources :searches do
    member {get :more}
  end
  devise_for :users
  get 'home/index'
  root to: "home#index"
  resources :sales do
    member {get :more}
  end
  resources :purchases do
    member {get :more}
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
