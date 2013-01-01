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
end
