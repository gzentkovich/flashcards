class DecksController < ApplicationController

  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
    @cards = @deck.cards
  end

  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.new(params[:deck])

    if @deck.save
      redirect_to decks_url, notice: 'Decks was successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def update
    @deck = Deck.find(params[:id])

    if @deck.update_attributes(params[:deck])
      redirect_to decks_url, notice: 'The deck was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
    redirect_to decks_url, notice: 'The deck has been successfully deleted.'
  end

end
