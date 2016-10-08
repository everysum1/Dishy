require 'rails_helper'
describe 'the login process', :type => :feature do
  before :each do
    User.create(username: "Tester", email: "Test@test.com", password: "Password", password_confirmation: "Password")
  end


  it "logins a user" do
    visit "/users/sign_in"
    within("#loginField") do
      fill_in "user[email]", with: "Test@test.com"
      fill_in "user[password]", with: "Password"
    end
    click_button "Log in"
    expect(page).to have_content "Signed in successfully."
  end
end
