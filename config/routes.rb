Gaslight::Application.routes.draw do

  resource :contact, controller: :contact, only: :create

  # catch all the pages
  match '/:id', to: 'pages#show', as: :static
  match '/', to: 'pages#show', id: 'home', as: :home
end
