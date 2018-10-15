class Meetup < ActiveRecord::Base
	belongs_to :user
    geocoded_by :formatted_address
    after_validation :geocode
    after_validation :geocode, if: ->(obj){ obj.formatted_address.present? and obj.formatted_address_changed? }
end
