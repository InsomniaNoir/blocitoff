Rails.application.routes.draw do
  devise_for :users
  
  get "welcome/index"
  get "welcome/about"
  
  authenticated :user do
    root :to => 'users#show', :as => "authenticated_root"
  end
  
  root :to => 'welcome#index'
end
