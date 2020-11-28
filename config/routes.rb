Rails.application.routes.draw do
  get 'home', to: 'pages#home', as: 'home'
  get 'user_main', to: 'pages#uman', as: 'uman'
  get 'group_main', to: 'pages#gman', as: 'gman'
  resources :incourses
  resources :incompletes
  resources :evaluations
  resources :projects
  resources :ingroups
  resources :groups
  resources :adminofs
  resources :courses
  resources :users
  devise_for :users
  root "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
