# == Schema Information
#
# Table name: downloads
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  url         :string(255)
#  description :text
#  icon_url    :string(255)
#  active      :boolean          default(FALSE)
#  position    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe "Download Model" do
  let(:download) { Download.new }
  it 'can be created' do
    download.should_not be_nil
  end
end
