Rails.application.routes.draw do
  get 'pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :enseignes, param: :label
      resources :avis, only: [:create, :destroy]
    end
  end

  get '*path', to: 'pages#index', via: :all
end
