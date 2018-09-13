Rails.application.routes.draw do
  root 'static_pages#welcome'
  #get '/patients/:id', to: 'patients#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
