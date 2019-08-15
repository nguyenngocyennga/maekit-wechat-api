Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :makerspaces, only: [:index]
      resources :equipments, only: [:index]
      resources :projects do
        resources :project_steps, shallow: true
      end
    end
  end
end
