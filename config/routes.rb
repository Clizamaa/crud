Rails.application.routes.draw do
 root 'bills#index'

  resources :bills do
    resources :months
  end
end
