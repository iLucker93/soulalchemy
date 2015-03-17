# == Schema Information
#
# Table name: workers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  role       :string(255)
#  image      :string(255)
#  desc       :text
#  created_at :datetime
#  updated_at :datetime
#

class Worker < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
