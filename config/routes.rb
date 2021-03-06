Rails.application.routes.draw do

  # You can have the root of your site routed with "root"
  root 'books#index'


  # Standard resource routes - represents all kind of request methods.
  resources :books


  # Route that points to a method inherited from parent controller
  get 'parent_action' => 'books#parent_action'


  # Route that points to a method from controller concern.
  get 'concern_action' => 'books#concern_action'


  # Route that points to non-existent method
  get 'no-method' => 'books#no_method'


  # Route that points to nowhere (no existing controller and no existing method)
  get 'nowhere' => 'no_controller#no_method'


  # Route that points to namespaced controller.
  namespace :my do
    get 'books' => 'books#index'
  end


  # Route that points to controller from namespace that's added to inflections  (ex. API vs Api handling).
  namespace :api do
    get 'books' => 'books#index'
  end


  # Redirect URLs
  get 'redirect_301' => redirect('/books')

  # Redirect with proc
  get 'redirect_proc' => redirect { |params, request|
      path = (params[:number].to_i.even? ? 'wheres-the-beef' : 'i-love-lamp')
      "http://#{request.host_with_port}/#{path}"
    }


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

end
