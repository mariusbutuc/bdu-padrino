class News < ActiveRecord::Base
  attr_accessible :title, :description, :img_url, :url, :active, :position
  validates :title, :img_url, :url, presence: true
end
