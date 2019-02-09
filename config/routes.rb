Rails.application.routes.draw do

  root 'static_pages#index'
  resources :articles
  resources :contacts, except: [ :index, :show, :destroy, :edit, :update]

  namespace :admin do

    root 'admin#index'
    resources :articles
    get 'change_display', to: 'articles#change_display'
    get 'pre_destroy', to: 'articles#pre_destroy'

  end
end
