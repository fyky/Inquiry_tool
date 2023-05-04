Rails.application.routes.draw do
  get 'statuses/index'
  get 'statuses/edit'
  devise_for :users
  resources :books do
    resource :favorites, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#index'
  resources :users, only: [:show]
  resources :statuses, except: [:new, :show]
end
