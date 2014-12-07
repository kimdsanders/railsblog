class Myblog < ActiveRecord::Base


	mount_uploader :image, PictureUploader

	validates :title, :presence => true
	validates :body, :presence => true



end
