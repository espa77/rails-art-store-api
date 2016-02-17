Rails.application.routes.draw do
  resources :exhibitions, except: [:new, :edit]
  resources :artists, except: [:new, :edit]
  resources :pieces, except: [:new, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
