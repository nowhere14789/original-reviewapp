Rails.application.routes.draw do
  root "materials#index"
  resources :materials, only: :create do
    resources :notes, only: :create
  end
end
