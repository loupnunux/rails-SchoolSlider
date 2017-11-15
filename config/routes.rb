Rails.application.routes.draw do
  resources :arts
  resources :biblicals
  resources :learns
  resources :authors
  resources :saints
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
