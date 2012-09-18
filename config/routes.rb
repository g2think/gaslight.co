Gaslight::Application.routes.draw do
  root to: 'pages#show', id: 'home'
  match "/:id", to: 'pages#show', as: :static
end
