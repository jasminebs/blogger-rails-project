class Tag < ActiveRecord::Base
	has_many :taggings
	has_many :articles, through: :taggings

	def tag_list
		self.tags.collect do |tag|
			tag.name
		end.join(", ")
	end

	def to_s
		name
	end
end
