Rails.application.routes.draw do
  resources :categories do
    collection do
      get 'new_category'
    end
  end
  
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "products#index"
end
