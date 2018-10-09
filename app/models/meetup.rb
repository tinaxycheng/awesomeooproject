class Meetup < ActiveRecord::Base
	belongs_to :user
	has_many :attendings
end
