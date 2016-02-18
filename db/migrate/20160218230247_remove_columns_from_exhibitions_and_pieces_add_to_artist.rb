class RemoveColumnsFromExhibitionsAndPiecesAddToArtist < ActiveRecord::Migration
  def change
    add_column :pieces, :artist_id, :integer
    add_column :pieces, :exhibition_id, :integer
  end
end
