Rails.application.routes.draw do
  get 'uimodule/list'
  get 'uimodule/show'
  get 'client_ui/view'
  get 'roles/list'
  get 'main_ui/view'
  root 'roles#list'
  get 'layout/generator'
  post 'layout/add'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
