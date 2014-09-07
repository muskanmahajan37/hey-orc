Rails.application.routes.draw do

  root to: "locations#index"

  get "search_results" => "films#search_results"

  resources :locations
end
