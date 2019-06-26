class Post < ApplicationRecord
	has_many :pictures, dependent: :destroy
	accepts_nested_attributes_for :pictures, allow_destroy: true
	mount_uploader :image, ImageUploader
end
