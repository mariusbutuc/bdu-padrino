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

require 'spec_helper'

describe "Testimonial Model" do
  let(:testimonial) { Testimonial.new }
  it 'can be created' do
    testimonial.should_not be_nil
  end
end
