Rails.application.routes.draw do
  jsonapi_resources :arguments
  jsonapi_resources :design_axis
  jsonapi_resources :parameters
  jsonapi_resources :mature_investments
  jsonapi_resources :simulations
  jsonapi_resources :versions
  jsonapi_resources :models
  jsonapi_resources :stock_days
  jsonapi_resources :stock_histories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
