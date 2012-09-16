Gaslight::Application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'home'
  match "/:id", to: 'high_voltage/pages#show', as: :static
end
