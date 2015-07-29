class Restaurant < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	has_many :reviews

	before_create :default_name

	def default_name
	  self.name ||= File.basename(image.filename, '.*').titleize if image
	end
end
