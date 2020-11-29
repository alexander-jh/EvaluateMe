Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users,
    path_names: {
        sign_in: 'login',
        sign_out: 'logout',
        sign_up: 'signup'
    }
  get 'home', to: 'pages#home', as: 'home'
  get 'portal', to: 'pages#portal', as: 'portal'
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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end