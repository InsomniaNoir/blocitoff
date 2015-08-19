Rails.application.routes.draw do
  devise_for :users

  # resources :tasks do
  #   put :toggle #task_complete_path(@task)
  # end

  get "welcome/index"
  get "welcome/about"

  root to: 'welcome#index'
end
