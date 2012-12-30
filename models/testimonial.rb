class Testimonial < ActiveRecord::Base
  attr_accessible :author, :content, :country, :email, :active

  validates :author, :content, presence: true

  scope :active, where(active: true)
end
