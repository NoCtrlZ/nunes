Rails.application.routes.draw do
  root 'static_pages#index'
  get 'admin', to: 'admin#index'
end
