Rails.application.routes.draw do
  resources :welcome, only: [:index, :show]
  devise_for :users
  root to: "welcome#index"
end
