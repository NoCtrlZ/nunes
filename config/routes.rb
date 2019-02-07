Rails.application.routes.draw do

  root 'static_pages#index'

  namespace :admin do

    root 'selects#index'
    resources :articles
    get 'change_display', to: 'articles#change_display'

  end
end
