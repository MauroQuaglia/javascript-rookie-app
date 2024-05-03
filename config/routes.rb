Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root(to: "home#index")

  get('cookie_storage', to: 'storage#cookie_storage')

end
