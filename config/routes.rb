Rails.application.routes.draw do
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/posts/new", to: "posts#new", as: "new_post"
  post "/posts", to: "posts#create", as: "posts"

  # Read
  get "/posts", to: "posts#index", as: "posts_index"
  get "/posts/:id", to: "posts#show", as: "post"

  # Update
  get "/posts/:id/edit", to: "posts#edit", as: "edit_post"
  patch "/posts/:id", to: "posts#update"
  
  # Delete
  delete "/posts/:id", to: "posts#destroy", as: "delete_post"

  # Defines the root path route ("/")
  # root "posts#index"


  get "authors/" ,to: "authors#index"

  get "authors/new", to: "authors#new" 
  get "authors/:id", to: "authors#show", as: "author"
  post "authors/", to: "authors#create"
  delete "authors/:id", to: "authors#destroy" , as: 'delete_author'
  get "authors/:id/edit", to: "authors#edit",  as: 'edit_author'
  patch "authors/:id", to: "authors#update"
end
