class Recipe < ApplicationRecord
	has_many :ingredients, dependent: :destroy
		accepts_nested_attributes_for :ingredients, allow_destroy: true

	has_many :steps, dependent: :destroy
		accepts_nested_attributes_for :steps, allow_destroy: true
	

	mount_uploader :image, ImageUploader

	def remove_image=(val)
		image_will_change! if val
		super
	end
end
