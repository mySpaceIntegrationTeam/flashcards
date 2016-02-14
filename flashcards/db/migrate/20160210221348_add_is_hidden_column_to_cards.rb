class AddIsHiddenColumnToCards < ActiveRecord::Migration
  def change
    add_column :cards, :is_hidden, :boolean
  end
end
