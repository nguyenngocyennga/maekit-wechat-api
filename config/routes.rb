Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post '/login', to: 'login#login'
      resources :bookings
      resources :users
      resources :makerspaces
      resources :equipments
      resources :projects do
        resources :project_steps, shallow: true
        resources :materials, shallow: true
      end
    end
  end
end
