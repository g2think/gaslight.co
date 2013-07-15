Gaslight::Application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  resource :contact, controller: :contact, only: :create

  resources :posts, path: '/blog', except: :show do
    collection do
      get "/:year(/:month(/:day))" => "posts#index", constraints: { year: /\d{4}/, month: /\d{2}/, day: /\d{2}/ }
      get :recent
      get :search
    end
  end

  get 'blog/:slug', to: 'posts#show'
  get 'post/:id(/:slug)', to: 'posts#show' # handle old tumblr urls

  # catch all the pages
  match '/:id', to: 'pages#show', as: :static
  match '/home', to: 'pages#show', id: 'home', as: :home

  # redirect to /home. Lets the app rewrite requests
  # and caches the page(s).
  root to: redirect("/home")
end
