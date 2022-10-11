Rails.application.routes.draw do
  resources :productions, only: [:index, :show]

  # get "/productions", to: "productions#index"
end
