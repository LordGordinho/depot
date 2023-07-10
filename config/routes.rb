Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  root 'stores#index', as: 'store_index'

  resources :products do
    get :who_bought, on: :member
  end
end
