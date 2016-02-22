class Artist < ActiveRecord::Base
  has_many :pieces
  has_many :exhibitions, through: :pieces
  mount_uploader :asset, AssetUploader
end
