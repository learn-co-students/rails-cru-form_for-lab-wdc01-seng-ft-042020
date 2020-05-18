class Song < ApplicationRecord
    belongs_to :genre, :artist
end
