Flashcards::Application.routes.draw do
  root :to => "decks#index"
  resources :decks
end
