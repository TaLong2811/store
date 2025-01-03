Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  get "/products", to: "products#index"
  resources :products do
    resources :subscribers, only: [ :create ]
  end
  root "products#index"
end