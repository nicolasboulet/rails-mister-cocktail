Rails.application.routes.draw do
  get 'doses/new'
  # Ingredients Routes
  get 'ingredients', to: 'ingredients#index'
  get 'ingredients/new', to: 'ingredients#new'
  # get 'ingredients/:id/edit', to: 'ingredients#edit'
  # post 'ingredients', to: 'ingredients#create'
  # patch 'ingredients', to: 'ingredients#update'
  # delete 'ingredients', to: 'ingredients#delete'
  # get 'ingredients/:id', to: 'ingredients#show'

  # Cocktails routes
  # get 'cocktails', to: 'cocktails#index'
  # get 'cocktails/new', to: 'cocktails#new', as: 'cocktails_new'
  # get 'cocktails/:id', to: 'cocktails#show', as: 'cocktails_show'
  # post 'cocktails', to: 'cocktails#create'

  resources :cocktails, only: [:create, :index, :show, :new] do
    resources :doses, only: [:new, :create, :delete]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
