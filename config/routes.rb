Rails.application.routes.draw do
  get 'home/index'

  resources :games, only: [:new, :create, :index, :edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
