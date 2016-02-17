class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :bio
end
