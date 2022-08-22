class AddBodyToTiles < ActiveRecord::Migration[7.0]
  def change
    add_column :tiles, :body, :text
  end
end
