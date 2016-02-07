class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :card_id
      t.text :background_color
      t.text :content

      t.timestamps null: false
    end
  end
end
