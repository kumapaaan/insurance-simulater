Rails.application.routes.draw do
  root 'premiams#index'
  resources :premiams
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
