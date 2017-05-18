Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/btc_tracker', to: 'btc_tracker#index'
end
