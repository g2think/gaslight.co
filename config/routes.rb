Gaslight::Application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  resource :contact, controller: :contact, only: :create
  resources :posts, path: '/blog' do
    collection do
      get :recent
      get :search
    end
  end

  # catch all the pages
  match '/:id', to: 'pages#show', as: :static
  match '/home', to: 'pages#show', id: 'home', as: :home

  # redirect to /home. Lets the app rewrite requests
  # and caches the page(s).
  root to: redirect("/home")
end
