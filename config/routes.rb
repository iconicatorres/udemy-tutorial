Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'porfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  #get 'pages/home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
end
