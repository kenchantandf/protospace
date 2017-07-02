Rails.application.routes.draw do
  resources :prototype, only: [:index, :show, :new]
end
