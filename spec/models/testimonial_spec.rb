require 'spec_helper'

describe "Testimonial Model" do
  let(:testimonial) { Testimonial.new }
  it 'can be created' do
    testimonial.should_not be_nil
  end
end
