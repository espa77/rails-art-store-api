class AddTitleToExhibitions < ActiveRecord::Migration
  def change
    add_column :exhibitions, :title, :string
  end
end
