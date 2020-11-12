Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :surfboards, except: %i[edit update] do
     #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :bookings, only: [:new, :create]
  end
  resources :booking, only: :destroy

  get '/users/:id/bookings', to: 'bookings#index', as: 'dashboard'
end
