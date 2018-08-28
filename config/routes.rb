Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'products#index'

  resources :products ,only:[:index, :show] do
    collection do
      get 'autocomplete'
    end
  end

  resources :inquiries
  get 'supply',to: 'home#supply'
  get 'contact',to: 'home#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
