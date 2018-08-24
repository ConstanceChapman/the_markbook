Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :teaching_sets, only: [:index] do
    resources :lessons, only: [:index, :show]
    resources :tasks, only: [:index, :create]
    resources :report_cycles, only: [:index]
    get 'events', to: 'events#filtered_index', defaults: { format: :json }
  end

  resources :scores, only: [:update]
  resources :tasks, only: [:update, :destroy]
  resources :marks, only: [:create, :update]
  resources :reports, only: [:update]
  resources :events, only: [:index], defaults: { format: :json }
end
