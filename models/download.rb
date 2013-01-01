# == Schema Information
#
# Table name: downloads
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  url         :string(255)
#  description :text
#  logo        :string(255)
#  active      :boolean          default(FALSE)
#  position    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Download < ActiveRecord::Base
  attr_accessible :title, :url, :description, :active, :position, :logo
  validates :title, :url, presence: true
  scope :active, where(active: true).order(:position)

  # Turn the title into an ID/slug
  # http://stackoverflow.com/a/3405699/341929
  def slug
    self.title.downcase.gsub(/\s+/, '-').gsub(/[^a-z0-9_-]/, '').squeeze('-')
  end
end
