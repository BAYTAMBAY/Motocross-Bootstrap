Rails.application.routes.draw do

  resources :requests
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords'}
  get 'courses/:id/want',to:"courses#want",as: "courses_want"
  resources :models
  resources :courses
  
  
  root to: 'home#index'
  post "create_request",to:"home#create_request"
  
  devise_for :admins, controllers: { sessions: 'admin/admins/sessions', registrations: 'admin/admins/registrations', passwords: 'admin/admins/passwords'}
  get 'admin/wants/:id/permit',to:"admin/wants#permit",as:"admin_wants_permit"
  get 'admin/wants/:id/nopermit',to:"admin/wants#nopermit",as:"admin_wants_nopermit"
  
  namespace :admin do
    root to: 'admins#index',as: "admins"
    resources :wants
    
    resources :motorcycles
    

  end

end
