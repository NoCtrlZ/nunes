Rails.application.routes.draw do
  root 'static_pages#index'
  namespace :admin do
  root 'selects#index'
  #   resource :content
  end
end
