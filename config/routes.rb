Rails.application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'submissions/:homework_id/:user_id', to: 'homeworks#submission', as: 'submission'
  
  resources :sessions
  resources :homeworks
  
  root 'welcome#index'
end
