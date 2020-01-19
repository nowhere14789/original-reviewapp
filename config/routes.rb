Rails.application.routes.draw do
  root "notes#index"
  resources :materials, only: :create do
    resources :notes, only: :create
  end
end
