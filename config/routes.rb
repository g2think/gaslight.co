Gaslight::Application.routes.draw do

  resource :contact, controller: :contact, only: :create

  # catch all the pages
  match '/:id', to: 'pages#show', as: :static
  match '/home', to: 'pages#show', id: 'home', as: :home

  # redirect to /home. Lets the app rewrite requests
  # and caches the page(s).
  root to: redirect("/home")
end
