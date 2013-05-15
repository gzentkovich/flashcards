Flashcards::Application.routes.draw do
  root :to => "decks#index"
  get "/decks" => "decks#index"
end
