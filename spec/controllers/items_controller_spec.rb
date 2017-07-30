require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe "POST #create" do

    before do
      sign_in user
    end

    it "increases number of Items by 1" do
      post :create, user_id: user.id, item: {name: 'helloworld'}
      expect(user.items.count).to eq(1)
    end
  end
end
