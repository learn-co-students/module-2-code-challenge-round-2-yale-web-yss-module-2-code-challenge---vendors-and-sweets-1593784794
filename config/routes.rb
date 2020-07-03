Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"

  resources :sweets, only: [:index, :show]
  resources :vendors, only: [:index, :show]
  resources :vendorsweets, only: [:index, :new, :create]

end
