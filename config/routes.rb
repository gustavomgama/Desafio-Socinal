Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
  resources :fruits, param: :name, only: %i[index show]
  resources :service_fruits, param: :name, only: %i[show]
end