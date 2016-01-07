class Homepageimage < ActiveRecord::Base
	belongs_to :project
 scope :all_except, ->(user) { where.not(id: user) }
end
