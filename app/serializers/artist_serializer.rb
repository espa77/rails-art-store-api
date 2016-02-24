class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :bio, :piece_ids, :exhibition_ids, :asset_url
  has_many :pieces, serializer: PieceNoAssociationSerializer
  # has_many :exhibitions, through: :pieces
end
