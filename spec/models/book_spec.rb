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

require 'spec_helper'

describe "Book Model" do
  let(:book) { Book.new }
  it 'can be created' do
    book.should_not be_nil
  end
end
