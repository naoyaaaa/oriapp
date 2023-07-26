Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :goals do
    resources :reflections
    resource :likes, only: [:create, :destroy]
  end
  resources :users
 

end
