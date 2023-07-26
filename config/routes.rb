Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events do
    resources :bookings, only: [:create]
    resources :messages, only: [:create]
  end

  get '/send_test_email', to: 'users#send_test_email', as: :send_test_email

  resources :users, only: [:show, :edit, :update]
  resources :bookings, only: [:destroy]
  # resources :dashboards, only: [:index, :show]
  get 'dashboard', to: "dashboards#show"
  get 'lucky', to: 'events#lucky'
end
