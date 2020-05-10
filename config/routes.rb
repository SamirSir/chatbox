Rails.application.routes.draw do

  get 'messages/create'
  
  post 'messages', to: "messages#create"

  devise_for :users
  
  root to: 'pages#home'
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'
end
