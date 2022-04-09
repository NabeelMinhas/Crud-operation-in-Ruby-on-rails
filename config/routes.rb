Rails.application.routes.draw do
  root "students#index"
  # get 'index' ,to: "students#index"
  get 'delete' ,to: "students#destroy" , as: :destroy
  # get 'new' ,to: "students#new" , as: :new
  # get 'update' ,to: "students#update"
  # post 'new' ,to: "students#create", as: :create
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
