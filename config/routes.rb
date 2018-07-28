Rails.application.routes.draw do
  resources :leads, only: [:index, :show, :create, :new]
  root to: "leads#index"
  get '/resume', to: 'leads#resume'
end
