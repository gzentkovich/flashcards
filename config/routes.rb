Flashcards::Application.routes.draw do
  root :to => "decks#index"
  get "/decks/new" => "decks#new"
  get "/decks" => "decks#index"
  get "/decks/:id/edit" => "decks#edit"
  delete "/decks/:id" => "decks#destroy"
  get "/decks/:id" => "decks#show", as: :deck
  post "/decks" => "decks#create"
  put "/decks/:id" => "decks#update"
end
