Rails.application.routes.draw do

  root 'static_pages#index'
  resources :articles
  resources :commands
  resources :contacts, except: [ :index, :show, :destroy, :edit, :update]

  namespace :admin do

    root 'admin#index'
    resources :articles
    resources :contacts
    resources :news
    resources :commands
    resources :errors
    resources :words
    get 'article/change_display', to: 'articles#change_display'
    get 'article/pre_destroy', to: 'articles#pre_destroy'
    get 'command/change_display', to: 'commands#change_display'
    get 'command/pre_destroy', to: 'commands#pre_destroy'
    get 'error/change_display', to: 'errors#change_display'
    get 'error/pre_destroy', to: 'errors#pre_destroy'

  end
end
