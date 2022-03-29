Rails.application.routes.draw do
  root 'list_of_devices#index'
  get 'list_of_devices/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
