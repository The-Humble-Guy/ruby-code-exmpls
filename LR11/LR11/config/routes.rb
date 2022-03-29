Rails.application.routes.draw do
  root 'lab11#input_form'
  get 'lab11/input_form'
  get 'lab11/output_form'
  get 'lab11/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
