Rails.application.routes.draw do
  resources :meetings
  devise_for :users
  resources :literatures
  resources :courses

  #resources :courses do
  #  resources :sessions
  #end

  root 'static_pages#welcome'
  get '/preview', to: 'static_pages#preview'
  #get '/patients/:id', to: 'patients#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
