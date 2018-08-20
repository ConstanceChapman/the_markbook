Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :teaching_sets, only: [:index] do
    resources :lessons, only: [:index]
    resources :tasks, only: :index
    resources :report_cycles, only: :index
  end
  resources :lessons, only: :show
  resources :scores, only: :update
  resources :tasks, only: [:create, :update]
  resources :marks, only: [:create, :update]
  resources :reports, only: [:update]
end
