Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :exhibitions, except: [:new, :edit]
      resources :artists, except: [:new, :edit]
      resources :pieces, except: [:new, :edit]
    end
  end
end
