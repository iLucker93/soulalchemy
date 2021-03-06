# == Schema Information
#
# Table name: news
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  desc       :text
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class News < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  acts_as_taggable
  acts_as_commentable
end
