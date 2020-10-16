Rails.application.routes.draw do
  resources :dogs
  resources :employees

  post "/dogs/sorted", to: "dogs#sort_dogs", as: "sort"
end
