class AddAssetToPieces < ActiveRecord::Migration
  def change
    add_column :pieces, :asset, :string
  end
end
