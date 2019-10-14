Rails.application.routes.draw do
  resources :global_users
  resources :user_loads do
    collection { post :import}
  end
  # get 'global_user/edit'
  #
  # get 'global_user/update'
  #
  # get 'global_user/index'
  #
  # get 'global_user/destroy'

  devise_for :users
  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'global_user#index'
  root 'global_users#index'
end
