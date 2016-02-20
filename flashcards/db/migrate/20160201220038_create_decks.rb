class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :title
      t.text :description
      t.string :back_color
      t.string :text_color
      t.integer :downloads
      t.integer :views
      t.integer :flag_id

      t.timestamps null: false
    end
  end
end
