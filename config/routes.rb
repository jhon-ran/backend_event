Rails.application.routes.draw do
  
  
  root to: "static_pages#index"
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  # get 'welcome/index'
  #root to: "welcome#index"
  
  
  resources :users
  resources :events
  resources :attendances
  
end
