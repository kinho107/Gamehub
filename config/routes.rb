Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :games
  resources :bookings, only: [:new, :create, :edit, :show, :destroy, :index] do
    resources :reviews, only: [:new, :create, :show]
  end
  resources :reviews, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
