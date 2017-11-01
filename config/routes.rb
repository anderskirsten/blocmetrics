Rails.application.routes.draw do
  
  devise_for :users
  
  get 'about' => 'welcome#about'
  
  get 'welcome' => 'welcome#index'

  root 'welcome#index'
end