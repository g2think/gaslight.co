Gaslight::Application.routes.draw do

  resource :contact, controller: :contact, only: :create

  # Look for a High Voltage page
  #match "/:id", to: 'pages#show', as: :static

  # testing wart
  match '/render_404', to: 'pages#render_404'

  # catch all the pages
  match '*a', :to => 'pages#render_404'
  
  root to: 'pages#show', id: 'home'
end
