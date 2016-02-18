class RemoveColumnsFromExhibitionsAndArtists < ActiveRecord::Migration
  def change
    remove_column :exhibitions, :piece_id, :integer
    remove_column :artists, :piece_id, :integer
  end
end
