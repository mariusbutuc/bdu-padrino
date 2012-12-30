# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  cover_url  :string(255)
#  authors    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < DownloadableResource
  attr_accessible :cover_url, :authors
  validates :cover_url, :authors, presence: true
end
