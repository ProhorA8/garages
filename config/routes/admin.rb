Rails.application.routes.draw do
  namespace :admin do
    root 'main#show'

    resources :users
  end
end
