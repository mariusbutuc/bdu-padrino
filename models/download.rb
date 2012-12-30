class Download < DownloadableResource
  attr_accessible :icon_url

  validates :icon_url, presence: true
end
