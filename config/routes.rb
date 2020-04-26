Rails.application.routes.draw do
  resources :users do
    member do
      get :delete
    end
  end

  root 'users#index'

  get ':controller(/:action(/:id))'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/edit'
  # get 'users/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
