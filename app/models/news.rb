class News < ActiveRecord::Base
  mount_uploader :picture, CkeditorPictureUploader
end