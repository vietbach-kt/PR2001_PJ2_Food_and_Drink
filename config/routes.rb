Rails.application.routes.draw do
  namespace :admin do
    root 'homepages#index'
    resources :categories do 
      resources :products, expect: [:index]
    end
    resources :products, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
