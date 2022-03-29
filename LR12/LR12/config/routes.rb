Rails.application.routes.draw do
  get 'sessions/login'
  post 'sessions/create'
  get 'sessions/logout'
  resources :users
  root 'index#input'
  get 'index/input'
  get 'index/output'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end