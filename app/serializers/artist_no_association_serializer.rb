class ArtistNoAssociationSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :bio, :piece_ids
end
