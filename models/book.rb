# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  url         :string(255)
#  description :text
#  cover_url   :string(255)
#  authors     :string(255)
#  active      :boolean          default(FALSE)
#  position    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Book < ActiveRecord::Base
  attr_accessible :title, :url, :description, :cover_url, :authors, :active, :position
  validates :title, :url, :cover_url, presence: true
  scope :active, where(active: true).order(:position)
end
