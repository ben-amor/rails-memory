Rails.application.routes.draw do
  get 'home/index'

  resources :games, only: [:new, :create, :index, :edit] do
    member do
      get  'edit' => :edit
      post 'edit' => :handle_edit_post
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
