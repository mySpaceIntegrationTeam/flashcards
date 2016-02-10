class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :title
      t.text :description
      t.integer :creator_id
      t.date :published
      t.integer :category_id
      t.integer :language_id
      t.date :updated
      t.string :back_color
      t.string :text_color
      t.integer :current_contributer_id
      t.integer :downloads
      t.integer :views
      t.integer :flag_id

      t.timestamps null: false
    end
  end
end