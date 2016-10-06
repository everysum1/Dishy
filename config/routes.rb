Rails.application.routes.draw do
  root "categories#index"
  resources :categories do
    resources :dishes
  end

  devise_for :users
  resources :users, only: [:show, :edit, :update]
  get '/dishes/search' => "dishes#search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
