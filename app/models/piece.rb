class Piece < ActiveRecord::Base
  belongs_to :artist
  has_many :exhibitions
end
