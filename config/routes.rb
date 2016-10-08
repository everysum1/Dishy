Rails.application.routes.draw do
  root "categories#index"
  resources :categories do
    resources :dishes
  end

  devise_for :users, controllers: {registrations: 'registrations'}
  resources :users, only: [:show, :edit, :update]
  resources :searches, only: [:show]
  resources :dishes, only: [:index] do
    resources :votes, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
