Rails.application.routes.draw do

  devise_for :users
  resources :articles
  resources :downloads
  resources :asks
  resources :answers
  root"welcome#index"

namespace :admin do
  resources :articles

end

namespace :admin do
  resources :downloads

end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
