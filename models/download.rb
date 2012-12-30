# == Schema Information
#
# Table name: downloads
#
#  id         :integer          not null, primary key
#  icon_url   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Download < DownloadableResource
  attr_accessible :icon_url
  validates :icon_url, presence: true
end
