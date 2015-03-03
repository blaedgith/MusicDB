class Song < ActiveRecord::Base
	belongs_to :artist
	belongs_to :album
	belongs_to :genre

	validates :name, presence: true
	validates :name, length: {maximum: 90}
	validates :name, length: {minimum: 10}
	validates :name, uniqueness: true

	
	extend FriendlyId
	friendly_id :name, use: :slugged

end
