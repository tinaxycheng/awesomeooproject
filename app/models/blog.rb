class Blog < ActiveRecord::Base
	acts_as_voteable
	def self.search(query)
    where('title LIKE :query OR content LIKE :query', query: "%#{query}%")
    end
    belongs_to :category
	belongs_to :user
	attr_accessor :image, :image_cache, :remove_image
	mount_uploader :image, ImageUploader
end
