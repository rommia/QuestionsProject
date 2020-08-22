Rails.application.routes.draw do
  get 'welcome/index'
  resources :questions
  root 'questions#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
