class Category < ActiveRecord::Base
	has_and_belongs_to_many :items

	def to_s
		name
	end
end
