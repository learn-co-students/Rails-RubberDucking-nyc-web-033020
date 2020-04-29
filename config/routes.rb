Rails.application.routes.draw do
  resources :ducks, only: [:index, :show, :new, :edit, :update, :create]
  resources :students, only: [:index, :show, :new, :edit, :update, :create]
end
