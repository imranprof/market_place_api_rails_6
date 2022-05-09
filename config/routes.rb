Rails.application.routes.draw do

  #Api definition
  namespace :api, defaults: {format: :json } do
    namespace :v1 do
      resources :users, only: [:show]
      resources :users, only: %i[:show create]

    end
  end

end
