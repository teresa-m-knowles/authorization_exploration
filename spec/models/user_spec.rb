require 'rails_helper'

RSpec.describe User, type: :model do
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:email)}
  it {should validate_presence_of(:password)}

  describe 'Class Methods' do
    it '.authenticate' do
      user_1 = User.create!(name:"Teresa", email:"teresa@gmail.com", password: "password12345")

      expect(User.authenticate("teresa@gmail.com", "password12345")).to eq(user_1)
      expect(User.authenticate("nonemail@gmail.com", "password12345")).to eq(nil)
    end
  end
end
