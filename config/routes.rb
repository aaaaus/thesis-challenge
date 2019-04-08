Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :schedules, only: [:index, :show, :create, :update, :destroy]
  # resources :appointments, only: [:create]

  resources :schedules do
    resources :appointments
  end
end
