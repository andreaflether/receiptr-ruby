Rails.application.routes.draw do
  root 'pages#home'
  
  get 'search', to: 'pages#search', as: :search
end
