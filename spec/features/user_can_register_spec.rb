require 'rails_helper'

RSpec.describe 'A user can create an account' do
  it 'should be able to create a new user' do
    visit new_user_path

    fill_in "user[name]", with: "Teresa Knowles"
    fill_in "user[email]", with: "teresa@email.com"
    fill_in "user[password]", with: "password12345"
    click_on "Create User"

    visit users_path

    expect(page).to have_content("Teresa Knowles")
    expect(page).to have_content("teresa@email.com")
    expect(page).to have_content("password12345")
  end
end
