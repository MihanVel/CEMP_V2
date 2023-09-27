Rails.application.routes.draw do
  devise_for :users
  resources :categories 
  
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"

   # Add routes for "about" and "contact" pages
    get "/about", to: "home#about"
    get "/contact", to: "home#contact"
end
