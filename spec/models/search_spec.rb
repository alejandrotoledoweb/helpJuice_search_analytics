require 'rails_helper'

RSpec.describe Search, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:description) }
    it { should validate_length_of(:description) }
  end
end

