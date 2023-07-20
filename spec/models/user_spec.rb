require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create :user }

  describe '#email' do
    context '有效的邮箱' do
      addresses = %w( user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn )
      addresses.each do |valid_address|
        let(:user) { build(:user, email: valid_address) }
        it { expect(user.valid?).to eq true }
      end
    end

    context '空' do
      let(:user) { build(:user, email: '') }
      it { expect(user.valid?).to eq false }
    end

    context '错误邮箱格式' do
      addresses = %w{ invalid_email_format 123 $$$ () ☃ bla@bla. }
      addresses.each do |invalid_address|
        let(:user) { build(:user, email: invalid_address) }
        it { expect(user.valid?).to eq false }
      end
    end

    context '重复' do
      let(:user_with_same_username) { build :user, username: user.username }
      it { expect(user_with_same_username.valid?).to eq false }
    end
  end
end