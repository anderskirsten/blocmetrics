Rails.application.routes.draw do
  get 'about' => 'welcome#about'
  
  get 'welcome' => 'welcome#index'

  root 'welcome#index'
end