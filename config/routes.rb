Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'products#index'
  resources :products ,only:[:index, :show]
  get 'home/navs'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
