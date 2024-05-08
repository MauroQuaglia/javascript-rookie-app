Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root(to: "home#index")

  get('cookie_storage', to: 'storage#cookie_storage')
  get('local_storage', to: 'storage#local_storage')
  get('session_storage', to: 'storage#session_storage')
  get('indexed_db_storage', to: 'storage#indexed_db_storage')

end
