class Mae < ActiveRecord::Base
  mount_uploader :image, ShashinUploader
  belongs_to :kumo
end
