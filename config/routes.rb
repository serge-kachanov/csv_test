Rails.application.routes.draw do
  resources :products, only: [:index], defaults: { format: :json }
end
