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

require 'spec_helper'

describe "News Model" do
  let(:news) { News.new }
  it 'can be created' do
    news.should_not be_nil
  end
end
