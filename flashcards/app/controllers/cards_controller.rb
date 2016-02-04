class CardsController < ApplicationController
  def index
  end
  helper_method def deck
    @deck ||= decks.find(params[:deck_id])
  end

  def show
  end

  def edit
  end

  def new
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_params
      params.require(:card).permit(:id, :description, :creator_id, :published, :category_id, :language_id, :updated, :current_contributer_id, :downloads, :views, :flag_id)
    end
end
