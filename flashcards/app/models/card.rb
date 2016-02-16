class Card < ActiveRecord::Base
  belongs_to :deck
  validates :side_a_text, :side_b_text, :card_back_color, :card_text_color, :presence => true
end
