class CreateExhibitions < ActiveRecord::Migration
  def change
    create_table :exhibitions do |t|
      t.string :location

      t.timestamps null: false
    end
  end
end
