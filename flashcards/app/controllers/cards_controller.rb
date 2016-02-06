class CardsController < ApplicationController
  before_action :set_deck, only: [:index, :show, :edit, :new]

  def index
    @cards = @deck.cards
  end

  def show
    @cards = @deck.card.find(params[:id])
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deck
      @deck = Deck.first
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def card_params
      params.require(:card).permit(:card_id, :background_color, :content, :deck_id)
    end
end
