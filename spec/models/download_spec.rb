# == Schema Information
#
# Table name: downloads
#
#  id         :integer          not null, primary key
#  icon_url   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe "Download Model" do
  let(:download) { Download.new }
  it 'can be created' do
    download.should_not be_nil
  end
end
