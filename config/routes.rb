Rails.application.routes.draw do
  
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :portfolios, except: [:show]	
  get 'portfolio/:id', to: 'portfolios#show', as: 'show_portfolio'

  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end
  
  root to: 'pages#home'
end
