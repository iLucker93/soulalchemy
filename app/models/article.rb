# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  desc       :text
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Article < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  acts_as_taggable
end
