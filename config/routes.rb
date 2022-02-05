Rails.application.routes.draw do
  devise_for :admins
  devise_for :buyers
  devise_for :shops
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"
end
