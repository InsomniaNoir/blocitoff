Rails.application.routes.draw do
  devise_for :users
  get "welcome/index"
  get "welcome/about"

  # resources :tasks do
  #   put :toggle #task_complete_path(@task)
  # end

  root to: 'welcome#index'
end
