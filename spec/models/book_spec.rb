require 'spec_helper'

describe "Book Model" do
  let(:book) { Book.new }
  it 'can be created' do
    book.should_not be_nil
  end
end
