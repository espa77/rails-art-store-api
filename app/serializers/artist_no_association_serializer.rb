class ArtistNoAssociationSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :bio, :piece_ids

  # has_many :exhibitions, through: :pieces
end
