# == Schema Information
#
# Table name: news
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  img_url     :string(255)
#  url         :string(255)
#  active      :boolean          default(FALSE)
#  position    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class News < ActiveRecord::Base
  attr_accessible :title, :description, :img_url, :url, :active, :position

  validates :title, :img_url, :url, presence: true

  scope :active, where(active: true).order(:position)
end
