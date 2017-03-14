Rails.application.routes.draw do
  resources :animes
  resources :blogs

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  root 'pages#home'
end
