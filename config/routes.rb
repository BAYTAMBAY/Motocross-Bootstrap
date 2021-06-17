Rails.application.routes.draw do
  get 'motorcycles/index'
  get 'motorcycles/show'
  get 'motorcycles/new'
  get 'motorcycles/edit'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
