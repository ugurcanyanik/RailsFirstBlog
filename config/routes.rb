Rails.application.routes.draw do
  
  devise_for :users
  resources :posts do
    resources :comments
  end
  root "pages#homepage"

  get '/contact', to: 'pages#contact'
end
