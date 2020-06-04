require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    User.delete_all
    @user = create(:user)
  end

  it 'should be valid' do
    expect(@user).to be_valid
  end

  it 'should be invalid without password' do
    @user = build(:user, password: nil)
    expect(@user).to_not be_valid
  end

end
