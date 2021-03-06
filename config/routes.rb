Rails.application.routes.draw do
  devise_for :users
  root to: 'lists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :bookmarks, only: [:index, :new, :create, :destroy]
  end
end
