class DownloadableResource < ActiveRecord::Base
  self.abstract_class = true

  attr_accessible :title, :url, :description, :active, :position

  validates :title, :url, :description, presence: true

  scope :active, where(active: true).order(:position)
end
