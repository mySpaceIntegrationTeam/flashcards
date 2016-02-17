class AddLanguageToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :language, :string
  end
end
