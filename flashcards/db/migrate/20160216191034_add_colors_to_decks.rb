class AddColorsToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :back_color, :string
    add_column :decks, :text_color, :string
  end
end
