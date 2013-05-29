class DecksController < ApplicationController
  before_filter :authenticate

  def index
    @decks = current_user.decks
  end

  def show
    @deck = find_deck
    @cards = @deck.cards
  end

  def new
    @deck = current_user.decks.new
  end

  def create
    @deck = current_user.decks.new(params[:deck])

    if @deck.save
      redirect_to decks_url, notice: 'Decks was successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @deck = find_deck
  end

  def update
    @deck = find_deck
    if @deck.update_attributes(params[:deck])
      redirect_to decks_url, notice: 'The deck was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @deck = find_deck
    @deck.destroy
    redirect_to decks_url, notice: 'The deck has been successfully deleted.'
  end

  private

  def find_deck
    current_user.decks.find(params[:id])
  end
end
