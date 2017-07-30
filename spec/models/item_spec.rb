require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:user) { User.create!(email: 'user@blocitoff.com', password: 'password')}

    it { is_expected.to belong_to(:user) }
    it { is_expected.to validate_presence_of(:user) }
end
