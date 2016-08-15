Rails.application.routes.draw do
  resources :brands do
    resources :models
  end

  root 'home#index'
end
