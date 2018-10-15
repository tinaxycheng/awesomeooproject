class Project < ActiveRecord::Base
	has_many :images
    has_many :homepageimages
end