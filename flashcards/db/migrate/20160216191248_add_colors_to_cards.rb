class AddColorsToCards < ActiveRecord::Migration
  def change
    add_column :cards, :card_back_color, :string
    add_column :cards, :card_text_color, :string
  end
end
