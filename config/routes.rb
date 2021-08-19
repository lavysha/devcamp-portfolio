Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio-show'

  get 'angular-items', to: 'portfolios#angular'


  get 'about' ,to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :blogs do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    member do
      get :toggle_status
    end
  end
  root to:'pages#home'

end
