class Blog < ActiveRecord::Base
	def self.search(query)
    where('title LIKE :query OR category LIKE :query', query: "%#{query}%")
    end
	belongs_to :user
	has_many :images
	attr_accessor :image
	mount_uploader :image, ImageUploader
end
