Rails.application.routes.draw do

  # Standard resource routes - represents all kind of request methods.
  resources :books


  # Route that points to a method inherited from parent controller
  get 'parent_action' => 'books#parent_action'


  # Route that points to a method from controller concern.
  get 'concern_action' => 'books#concern_action'


  # Route that points to namespaced controller.
  namespace :my do
    get 'books' => 'books#index'
  end


  # Route that points to controller from namespace that's added to inflections  (ex. API vs Api handling).
  namespace :api do
    get 'books' => 'books#index'
  end


  # You can have the root of your site routed with "root"
  root 'books#index'


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

end
