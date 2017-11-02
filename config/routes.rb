Rails.application.routes.draw do
  
  devise_for :users
  
  resources 'registered_applications'
  
  get 'about' => 'welcome#about'
  
  get 'welcome' => 'welcome#index'
  
  authenticated :user do
    root 'registered_applications#index', as: :authenticated_root
  end

  root 'welcome#index'
end