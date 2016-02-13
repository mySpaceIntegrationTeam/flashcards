class AddCreatorToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :creator, :string
  end
end
