class CardsController < ApplicationController

  def show
    @deck = find_deck
    @card = @deck.cards.find(params[:id])
  end

  def new
    @deck = find_deck
    @card = @deck.cards.new
  end

  def create
    @deck = find_deck
    @card = @deck.cards.new(params[:card])
    @card.save
    redirect_to @deck
  end

  private

  def find_deck
    Deck.find(params[:deck_id])
  end

end
