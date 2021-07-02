Rails.application.routes.draw do

  devise_for :users
  get 'courses/:id/want',to:"courses#want",as: "courses_want"
  resources :models
  resources :courses
  
  
  root to: 'home#index'
  
  devise_for :admins, controllers: { sessions: 'admin/admins/sessions', registrations: 'admin/admins/registrations', passwords: 'admin/admins/passwords'}
  get 'admin/wants/:id/permit',to:"admin/wants#permit",as:"admin_wants_permit"
  
  namespace :admin do
    root to: 'admins#index',as: "admins"
    resources :wants
    
    resources :motorcycles
    

  end

end
