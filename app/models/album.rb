class Album < ActiveRecord::Base
	belongs_to :artist
	belongs_to :genre
	has_many :songs

	validates :title, presence: true
	validates :title, length: {maximum: 90}
	validates :title, uniqueness: true

	mount_uploader :cover, CoverUploader

	extend FriendlyId
	friendly_id :title, use: :slugged
end
