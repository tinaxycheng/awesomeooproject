class Blog < ActiveRecord::Base
	def self.search(query)
    where('title LIKE :query OR category LIKE :query', query: "%#{query}%")
    end
    belongs_to :category
	belongs_to :user
	attr_accessor :image, :image_cache, :remove_image
	mount_uploader :image, ImageUploader
end
