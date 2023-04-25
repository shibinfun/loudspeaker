Rails.application.routes.draw do

  root 'welcome#index'
  resources :videos

  namespace :admin do

  resources :videos
  end

  resources :wordkeys

  namespace :admin do

  resources :wordkeys
  end





  resources :waimaos

  namespace :admin do

  resources :waimaos
  end
  namespace :admin do
    resources :waimao_categories
  end

  resources:malls

  namespace :admin do

  resources :malls
  end
  namespace :admin do
    resources :mall_categories
  end




  resources:earticles

  namespace :admin do

  resources :earticles
  end
  namespace :admin do

  resources :recommends
  end
  resources :recommends
  namespace :admin do
    resources :article_categories
  end
  namespace :admin do
    resources :earticlecategories
  end
  namespace :admin do
    resources :recommend_categories
  end
  namespace :admin do
    resources :informationn_categories
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


resources :welcome
resources :sentences
namespace :admin do
  resources :sentences
end


namespace :admin do
  resources :articles


end





namespace :admin do

  resources :downloads
end
namespace :admin do
resources :informationns
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
