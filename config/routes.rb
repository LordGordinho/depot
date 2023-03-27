Rails.application.routes.draw do
  root 'stores#index', as: 'store_index'

  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
