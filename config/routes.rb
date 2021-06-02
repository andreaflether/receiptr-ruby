Rails.application.routes.draw do
  root 'pages#home'
  
  get 'search', to: 'pages#search', as: :search
  
  resources :albums, only: %i[show] do
    resources :sorts, only: %i[new create show]
  end
  resources :artists, only: %i[show]
end
