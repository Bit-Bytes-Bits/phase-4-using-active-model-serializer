Rails.application.routes.draw do
  resources :movies, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/movies/:id/summary", to: "movies#summary"


  # If we wanted to use our new custom serializer to render the full collection of movies, we would need to create another route and action:
  get "/movie_summaries", to: "movies#summaries"
end
