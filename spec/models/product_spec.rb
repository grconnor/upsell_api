require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Database table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :price }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :id }
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :price }
  end

  describe 'Factories' do
    it 'is expected to have a valid Factory bot' do
      expect(create(:product)).to be_valid
    end
  end
end
