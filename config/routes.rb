Rails.application.routes.draw do

  get 'about', to:'pages#about', as: :about
  get 'contact', to:'pages#contact', as: :contact

  resources :tournaments

        resources :teams




  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
