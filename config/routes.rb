Rails.application.routes.draw do

  resources :models
  
  root to: 'home#index'
  
  devise_for :admins, controllers: { sessions: 'admin/admins/sessions', registrations: 'admin/admins/registrations', passwords: 'admin/admins/passwords'}
  
  namespace :admin do
    root to: 'admins#index',as: "admins"
    
    resources :motorcycles
    

  end

end
