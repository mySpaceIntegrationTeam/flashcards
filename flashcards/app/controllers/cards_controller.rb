class CardsController < ApplicationController
  before_action :set_deck

  #GET /decks/:deck_id/cards
  def index
    @cards = @deck.cards
  end

  #GET /decks/:deck_id/cards/:id
  def show
    @card = @deck.cards.find(params[:id])
  end

  #GET /decks/:deck_id/cards/:id/edit
  def edit
  @card = @deck.cards.find(params[:id])
  end

  #GET /decks/:deck_id/cards/new
  def new
    @card = @deck.cards.build
  end
  
  #POST /decks/:decks_id/cards/
  def create

    @card = @deck.cards.build(card_params)

    respond_to do |format|
      if @card.save
        format.html { redirect_to deck_cards_path(@deck), notice: 'Card was successfully created.' }
        format.json {render :show, status: :created, location: deck_card_path(@deck, @card)}
      else
        format.html { render :new }
        format.json { render json: @deck.errors, status: :unprocessable_entity}
      end
    end
  end

  def update

    @card = @deck.cards.find(params[:id])

    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to deck_cards_path(@deck), notice: 'Card was successfully updated.' }
        format.json {render :show, status: :created, location: deck_card_path(@deck, @card)}
      else
        format.html { render :edit }
        format.json {render json: @deck.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @card = @deck.cards.find(params[:id])
    @card.destroy()
    respond_to do |format|
      format.html { redirect_to deck_cards_path(@deck), notice: 'Card was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deck
      @deck = Deck.find(params[:deck_id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def card_params
      params.require(:card).permit(:id, :card_title, :side_a_text, :side_b_text, :side_a_math, :side_b_math, :side_a_image, :side_b_image, :card_back_color, :card_text_color, :deck_id)
    end
end
