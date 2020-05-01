Rails.application.routes.draw do
  resources :ducks, only: [:index, :new, :create, :show, :edit, :update]
  resources :students, only: [:index, :new, :create, :show, :edit, :update]
end
