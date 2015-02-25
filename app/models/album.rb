class Album < ActiveRecord::Base
	belongs_to :artist
	belongs_to :genre
	has_many :songs

	validates :name, presence: true
	validates :name, length: {:maximum 90}
	validates :name, uniqueness: true
end
