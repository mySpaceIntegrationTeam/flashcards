class AddColumnsToCards < ActiveRecord::Migration
  def change
    add_column :cards, :side_a_text, :text
    add_column :cards, :side_b_text, :text
    add_column :cards, :side_a_image, :text
    add_column :cards, :side_b_image, :text
    add_column :cards, :side_a_math, :text
    add_column :cards, :side_b_math, :text
  end
end
