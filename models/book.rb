class Book < DownloadableResource
  attr_accessible :cover_url, :authors

  validates :cover_url, :authors, presence: true

end
