Rails.application.routes.draw do

  devise_for :users
  get 'home/index'
  root 'home#index'

  resources :stuffs, only: [:index]

  resources :garrages do
    resources :stuffs do
      resources :comments, :only => [:create]
 #     resources :comments, except: [:index, :new, :edit]
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
