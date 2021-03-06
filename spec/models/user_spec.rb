require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe 'Factory' do
    it 'should have a valid Factory' do
      expect(create(:user)).to be_valid
    end
  end

  describe 'Database table' do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :tokens }
    it { is_expected.to have_db_column :encrypted_password } 
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_confirmation_of :password }

    context 'should not have an invalid email address' do
      emails = ['asdf@ ds.com', '@example.com', 'test me @yahoo.com',
                'asdf@example', 'ddd@.d. .d', 'ddd@.d']

      emails.each do |email|
        it { is_expected.not_to allow_value(email).for(:email) }
      end
    end

    context 'should have a valid email address' do
      emails = ['asdf@ds.com', 'hello@example.uk', 'test1234@yahoo.si',
                'asdf@example.eu']

      emails.each do |email|
        it { is_expected.to allow_value(email).for(:email) }
      end
    end
  end

  describe 'Relations' do
    it { is_expected.to have_many :orders}
  end
end
