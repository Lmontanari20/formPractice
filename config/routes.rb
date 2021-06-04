Rails.application.routes.draw do
  resources :dog, only: [:create, :new, :show, :index]
end
