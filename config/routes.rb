Rails.application.routes.draw do
  get "products/index"
  mount_devise_token_auth_for "User", at: "api/v1/auth", skip: [:omniauth_callbacks]
  namespace :api do
    namespace :v0 do
      resources :pings, only: [:index]
      # , constraints: { format: 'json' }
    end
    namespace :v1 do
      resources :products, only: [:index, :show, :create]
      resources :orders, only: [:create, :update]
    end
  end
end
