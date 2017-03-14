Rails.application.routes.draw do
  resources :animes do
    member do
      get :toggle_status 
    end
  end

  resources :blogs

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  root 'pages#home'
end
