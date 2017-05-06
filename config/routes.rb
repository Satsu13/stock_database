Rails.application.routes.draw do
  resources :design_axis
  resources :parameters
  resources :mature_investments
  resources :simulations
  resources :versions
  resources :models
  resources :stock_days
  resources :stock_histories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
