Rails.application.routes.draw do
  
  namespace :api, defaults: { format: :json } do
    match '/events', to: 'events#preflight', via: :options
    resources 'events', only: :create
  end
  
  devise_for :users
  
  resources 'registered_applications'
  
  get 'about' => 'welcome#about'
  
  get 'welcome' => 'welcome#index'
  
  authenticated :user do
    root 'registered_applications#index', as: :authenticated_root
  end

  root 'welcome#index'
end