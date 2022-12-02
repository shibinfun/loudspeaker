Rails.application.routes.draw do
  namespace :admin do
  resources :recommends
  end
  resources :recommends
  namespace :admin do
    resources :article_categories
  end
  namespace :admin do
    resources :recommend_categories
  end
  namespace :admin do
    get 'recommends/destroy'
  end

  namespace :admin do
    get 'recommends/edit'
  end

  namespace :admin do
    get 'recommends/update'
  end

  get 'recommends/index'

  get 'recommends/show'

resources:qqgroups



  namespace :admin do
    resources:qqgroups
  end

  devise_for :users
  resources :informationns
  resources :articles
  resources :downloads
resources :asks
  #resources :answers

  root"welcome#index"

namespace :admin do
  resources :articles
  resources :asks do
    resources :answers
  end
end

namespace :admin do
  resources :answers
  resources :downloads
end
namespace :admin do
resources :informationns
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
