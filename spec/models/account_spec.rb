# == Schema Information
#
# Table name: accounts
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  surname          :string(255)
#  email            :string(255)
#  crypted_password :string(255)
#  role             :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'spec_helper'

describe "Account Model" do
  let(:account) { Account.new }
  it 'can be created' do
    account.should_not be_nil
  end
end
