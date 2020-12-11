Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products do 
    resources :reviews, only: [:create]
    resources :request, only: [:create]
  end
  resources :request, only: [:index]
  
end
