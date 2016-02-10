class AddCategoryToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :category, :string
  end
end
