Rails.application.routes.draw do
  resources :locations
  get 'welcome/index'

  resources :inventory_items

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
