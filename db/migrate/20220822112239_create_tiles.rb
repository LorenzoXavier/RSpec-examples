class CreateTiles < ActiveRecord::Migration[7.0]
  def change
    create_table :tiles do |t|
      t.string :model_link
      t.string :spec_link

      t.timestamps
    end
  end
end
