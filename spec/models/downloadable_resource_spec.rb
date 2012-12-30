require 'spec_helper'

describe "DownloadableResource Model" do
  let(:downloadable_resource) { DownloadableResource.new }
  it 'can be created' do
    downloadable_resource.should_not be_nil
  end
end
