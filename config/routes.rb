Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :goals do
    resources :reflections
  end
  resources :users
 

end
