class Testimonial < ActiveRecord::Base
  attr_accessible :author, :content, :country, :email, :active
  validates :author, :content, presence: true
end
