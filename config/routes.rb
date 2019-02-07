Rails.application.routes.draw do

  root 'static_pages#index'

  namespace :admin do

    root 'selects#index'
    resources :contents
    get 'change_display', to: 'contents#change_display'
  
  end
end
