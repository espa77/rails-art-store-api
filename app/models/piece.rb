class Piece < ActiveRecord::Base
  belongs_to :artist
  belongs_to :exhibition
end
