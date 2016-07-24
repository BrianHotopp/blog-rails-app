Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  get 'articles/index', to: 'articles#index'
  root to: 'welcome#index'
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
