class Genre < ActiveRecord::Base
	has_many :artists
	has_many :albums
	has_many :songs

	validates :name, presence: true
	validates :name, length: {maximum: 90}
	validates :name, uniqueness: true

	
	extend FriendlyId
	friendly_id :name, use: :slugged
end
