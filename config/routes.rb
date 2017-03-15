Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :blogs

  get 'action-animes', to: 'animes#actionanime'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :animes do
    member do
      get :toggle_status 
    end
  end

  root 'pages#home'
end
