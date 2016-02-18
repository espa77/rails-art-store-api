class RemoveColumnsFromArtistsExhibitionsAndPieces < ActiveRecord::Migration
  def change
    remove_column :pieces, :artist_id, :integer
    remove_column :pieces, :exhibition_id, :integer
    remove_column :exhibitions, :artist_id, :integer
    remove_column :artists, :exhibition_id, :integer
  end
end
