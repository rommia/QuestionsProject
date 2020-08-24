Rails.application.routes.draw do
  resources :answers
  get 'welcome/index'
  resources :questions do
    resources :answers
    end
  root 'questions#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
