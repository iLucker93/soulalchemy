class News < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  acts_as_taggable
  acts_as_commentable
end
