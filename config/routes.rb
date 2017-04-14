Rails.application.routes.draw do
  resources :arguments
  resources :design_axis
  resources :mature_investments
  resources :models
  resources :parameters
  resources :simulations
  resources :stock_days
  resources :stock_histories
  resources :versions
end
