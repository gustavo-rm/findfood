Rails.application.routes.draw do
<<<<<<< HEAD
  resources :categories
  resources :ingredients
  resources :dishes
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  resources :authors
  resources :categories
  resources :posts do
  	collection do 
  		get 'homepage'
  		post 'homepage' 
  	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  root 'posts#homepage'
>>>>>>> 27eb930ff04d8e85525b40e38638b161ab207de3
end
