class MenterImage < ActiveRecord::Base
	belongs_to :menter

	attr_accessible :menter, :data, :content_type
	attr_accessible :menter, :data, :content_type, as: :admin

	IMAGE_TYPES = { "image/jpeg" => "jpg", "image/gif" => "gif",
									"image/png" => "png" }
	def extension
		IMAGE_TYPES[content_type]
	end
end
