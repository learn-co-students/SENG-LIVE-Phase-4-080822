Rails.application.routes.draw do
  resources :productions, only: [:index, :show]

  

end
