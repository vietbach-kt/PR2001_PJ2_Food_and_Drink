Rails.application.routes.draw do
  root 'homepages#home'
  namespace :admin do
    get 'home', to: 'homepages#index'
    resources :categories do 
      resources :products
    end
    resources :products, only: [:index, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
