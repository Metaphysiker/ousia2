Rails.application.routes.draw do
  resources :courses
  resources :sessions

  #resources :courses do
  #  resources :sessions
  #end



  root 'static_pages#welcome'
  get '/preview', to: 'static_pages#preview'
  #get '/patients/:id', to: 'patients#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
