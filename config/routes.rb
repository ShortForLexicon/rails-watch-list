Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # GET "lists", to: "lists#index"
  # GET "lists/:id", to: "lists#show"
  # POST "lists", to: "lists#create"
  root to: "lists#home"
  resources :lists, only: [:index, :show, :create, :new]

    # resources :bookmarks only ['new', 'index', 'destroy']
    # GET "lists/:id/bookmarks/new", to: "bookmarks#new"
    # POST "lists/:id/bookmarks/index", to: "bookmarks#index"
    # DELETE "bookmarks/:id", to: "bookmarks#delete"


  # GET "movies", to: "movies/index"

end
