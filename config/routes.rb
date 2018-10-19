Rails.application.routes.draw do
  resources :group_events
  root 'group_events#index'
end
