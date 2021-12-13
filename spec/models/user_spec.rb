require 'rails_helper'

RSpec.describe User, type: :model do

  context 'Validations' do
    it '1. Not valid without a name' do

      user = User.new(name: nil)

      expect(category).to_not be_valid
    end

    it '2. Minimum of 3 characters' do
      user = User.new(name: "gh")

      expect(category).to_not be_valid
    end
  end
end
