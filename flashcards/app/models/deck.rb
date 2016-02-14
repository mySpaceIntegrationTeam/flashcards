class Deck < ActiveRecord::Base
  has_many :cards
  validates :title, :description, :back_color, :text_color, :presence => true
end
