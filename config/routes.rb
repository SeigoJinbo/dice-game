Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  get 'users/edit'
  devise_for :users
  resources :games
  # namespace :api do
  #   namespace :v1 do
  #     resources :users
  #     resources :games
  #   end
  # end
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
