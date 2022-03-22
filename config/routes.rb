Rails.application.routes.draw do

  resources :admin_homes, only: [:index]
  resources :admin_users, only: [:index]
  resources :shop_homes, only: [:index]
  resources :buyer_homes, only: [:index]
  resources :news
  resources :blogs
  resources :sign_ins, only: [:index]
  resources :sign_ups, only: [:index]
  resources :helps, only: [:index]
  resources :laws, only: [:index]
  resources :terms, only: [:index]
  resources :privacies, only: [:index]

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :buyers, controllers: {
    sessions: 'buyers/sessions',
    passwords: 'buyers/passwords',
    registrations:'buyers/registrations'
  }
  devise_for :shops, controllers: {
    sessions: 'shops/sessions',
    passwords: 'shops/passwords',
    registrations: 'shops/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "homes#index"
end
