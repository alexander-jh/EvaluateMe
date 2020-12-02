Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup' }
  get 'home', to: 'pages#home', as: 'home'
  get 'portal', to: 'pages#portal', as: 'portal'
  get 'admin_portal', to: 'pages#admin_portal', as: 'admin_portal'
  get 'user_main', to: 'pages#uman', as: 'uman'
  get 'admin_main', to: 'pages#aman', as: 'aman'
  get 'group_main', to: 'pages#gman', as: 'gman'
  get 'user_test', to: 'pages#utest', as: 'utest'
  get '/projects/:project_id', to: 'projects#show', as: 'pshow'
  post 'send_eval', to: 'projects#send_evaluation'
  resources :incourses
  resources :incompletes
  resources :evaluations
  resources :projects
  resources :ingroups
  resources :groups
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end