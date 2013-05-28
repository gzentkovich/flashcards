class CardsController < ApplicationController

  def show
    @deck = find_deck
    @card = @deck.cards.find(params[:id])
  end

  def new
    @deck = find_deck
    @card = @deck.cards.new
  end

  private

  def find_deck
    Deck.find(params[:deck_id])
  end

end
