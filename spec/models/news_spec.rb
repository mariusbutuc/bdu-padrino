require 'spec_helper'

describe "News Model" do
  let(:news) { News.new }
  it 'can be created' do
    news.should_not be_nil
  end
end
