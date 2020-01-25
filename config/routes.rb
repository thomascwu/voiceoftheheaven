Rails.application.routes.draw do
  resources :contacts
  resources :resources
  resources :gives
  resources :abouts
  resources :voices
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
