Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#home'

  resources :stops, only: %i[new create]

  namespace :api do
    namespace :v1 do
      resources :stops, only: [] do
        collection do
          get 'nearest'
        end
      end
    end
  end
end
