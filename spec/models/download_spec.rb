require 'spec_helper'

describe "Download Model" do
  let(:download) { Download.new }
  it 'can be created' do
    download.should_not be_nil
  end
end
