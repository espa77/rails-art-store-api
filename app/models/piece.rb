class Piece < ActiveRecord::Base
  belongs_to :artist
  belongs_to :exhibition
  mount_uploader :asset, AssetUploader
end
