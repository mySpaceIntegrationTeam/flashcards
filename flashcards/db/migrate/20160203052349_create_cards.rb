class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :card_back_color
      t.string :card_text_color
      t.timestamps null: false
    end
  end
end
