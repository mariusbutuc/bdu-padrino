# == Schema Information
#
# Table name: testimonials
#
#  id         :integer          not null, primary key
#  author     :string(255)
#  content    :text
#  country    :string(255)
#  email      :string(255)
#  active     :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Testimonial < ActiveRecord::Base
  attr_accessible :author, :content, :country, :email, :active

  validates :author, :content, presence: true

  scope :active, where(active: true)
end
