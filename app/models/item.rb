class Item < ActiveRecord::Base
	has_and_belongs_to_many :categories
	validates :description, presence: true,
                    length: { minimum: 5 }

end
