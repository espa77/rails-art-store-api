class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :bio, :piece_ids, :exhibition_ids, :asset
  # has_many :pieces
  # has_many :exhibitions, through: :pieces
end
