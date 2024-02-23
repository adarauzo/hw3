Rails.application.routes.draw do
  resources :places do
    resources :entries
  end
  root 'places#index'
end