Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :events
  resources :slides
  get 'slideshows' => 'slideshows#index'
  get 'settings' => 'settings#index'
  post 'settings' => 'settings#create'
  patch 'settings' => 'settings#update'
  resources :students
  root to: 'home#index'
end
