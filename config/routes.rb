Gaslight::Application.routes.draw do

  resource :contact, controller: :contact, only: :create

  # Look for a High Voltage page
  # match "/:id", to: 'pages#show', as: :static

  root to: 'pages#show', id: 'home'
end
