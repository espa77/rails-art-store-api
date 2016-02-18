class AddPieceIdArtistIdToExhibitons < ActiveRecord::Migration
  def change
    add_column :exhibitions, :piece_id, :integer
    add_column :exhibitions, :artist_id, :integer
  end
end
