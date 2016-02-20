class Deck < ActiveRecord::Base
  has_many :cards, inverse_of: :deck
  validates :title, :description, :back_color, :text_color, :presence => true
  validates :title, uniqueness: true
end
