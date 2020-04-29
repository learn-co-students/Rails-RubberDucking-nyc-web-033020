Rails.application.routes.draw do
  get 'ducks/new'
  get 'ducks/edit'
  get 'ducks/show'
  get 'students/new'
  get 'students/create'
  get 'students/edit'
  get 'students/update'
  get 'students/destroy'
  get 'students/show'
  resources :ducks
  resources :students
end
