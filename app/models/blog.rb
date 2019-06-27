class Blog < ApplicationRecord
	mount_uploader :picture, PictureUploader
	#belongs_to :categoria_blog
	has_many :categoria_blogs
end
