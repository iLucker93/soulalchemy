Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root 'main#index'

  resources :news
  resources :articles
  resources :workers

  post 'comment', to: 'news#comment'

end
