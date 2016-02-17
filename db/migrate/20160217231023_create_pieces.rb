class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :style
      t.string :subject
      t.string :medium
      t.string :size
      t.decimal :price, precision: 5, scale: 2
      t.references :artist, index: true, foreign_key: true
      t.references :exhibition, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
