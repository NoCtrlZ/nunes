Rails.application.routes.draw do

  root 'static_pages#index'
  resources :articles, except: [ :index, :new, :destroy, :edit, :update, :create]
  resources :contacts, except: [ :index, :show, :destroy, :edit, :update]
  resources :news, except: [ :index, :new, :destroy, :edit, :update, :create]
  resources :commands, except: [ :index, :new, :destroy, :edit, :update, :create]
  resources :errors, except: [ :index, :new, :destroy, :edit, :update, :create]
  resources :words, except: [ :index, :new, :destroy, :edit, :update, :create]

  namespace :admin do

    root 'admin#index'
    resources :articles, :contacts, :news, :commands, :errors, :words
    get 'article/change_display', to: 'articles#change_display'
    get 'article/pre_destroy', to: 'articles#pre_destroy'
    get 'command/change_display', to: 'commands#change_display'
    get 'command/pre_destroy', to: 'commands#pre_destroy'
    get 'error/change_display', to: 'errors#change_display'
    get 'error/pre_destroy', to: 'errors#pre_destroy'
    get 'word/change_display', to: 'words#change_display'
    get 'word/pre_destroy', to: 'words#pre_destroy'

  end
end
