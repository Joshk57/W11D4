Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api, defaults: { format: :json } do
    # define routes here to include them in the api namespace
    get "pokemon/types" => "pokemon#types"
    resources :items, only: [:update, :destroy]
    resources :pokemon, only: [:index, :create, :show, :update] do
      resources :items, only: [:index, :create]
    end
    # resources :pokemon, only: :types, controller: 'pokemon/types'
  end
end
