Flashcards::Application.routes.draw do
  root :to => "decks#index"
  resources :decks do
    resources :cards, except: :index
  end
end
