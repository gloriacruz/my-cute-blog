Rails.application.routes.draw do
  # get 'welcome/index'

  resources :articles do
    resources :comments #nested resource
  end

  root 'welcome#index'
end
