class Image < ActiveRecord::Base
  validates :title, :url, :presence => true
end
