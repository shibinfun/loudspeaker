Rails.application.routes.draw do

  devise_for :users
  resources :articles
  root"welcome#index"

namespace :admin do
  resources :articles
end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
