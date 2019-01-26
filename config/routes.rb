Rails.application.routes.draw do
  root 'static_pages#index'
  resource :admin
  get 'admin/content', to: 'admins#content'
end
