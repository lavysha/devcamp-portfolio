Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in:'login', sign_out:'logout',sign_up: 'register'}
  resources :portfolios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
