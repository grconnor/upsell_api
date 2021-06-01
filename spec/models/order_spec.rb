require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'Relations' do
    it { is_expected.to belong_to :user }
  end

  describe 'Factory' do
    it 'should have valid Factory bot' do
      expect(create(:order)).to be_valid
    end
  end
end
