class AddTitleToTile < ActiveRecord::Migration[7.0]
  def change
    add_column :tiles, :title, :string
  end
end
