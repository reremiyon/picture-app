Rails.application.routes.draw do
  root "pictures#index"

  resources :pictures, only: [:index] do
  end
end
