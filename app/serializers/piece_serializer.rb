class PieceSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :title, :style, :subject, :medium, :size, :price, :artist_id
  has_one :artist, serializer: ArtistNoAssociationSerializer
  has_one :exhibition
end
