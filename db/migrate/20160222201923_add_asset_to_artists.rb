class AddAssetToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :asset, :string
  end
end
