Rails.application.routes.draw do

  root to: "locations#index"

  get "search_results" => "locations#search_results"

  resources :locations
end
