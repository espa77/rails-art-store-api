class AddPieceIdExhibitonIdToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :piece_id, :integer
    add_column :artists, :exhibition_id, :integer
  end
end
