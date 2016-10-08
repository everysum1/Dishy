require 'rails_helper'
describe "logging a user in and upvoting a recipe", type: :feature do
  before :each do
    User.create(username: "Tester", email: "Test@test.com", password: "Password", password_confirmation: "Password")
    visit "/users/sign_in"
    within("#loginField") do
      fill_in "user[email]", with: "Test@test.com"
      fill_in "user[password]", with: "Password"
    end
    click_button "Log in"
  end

  it "Upvotes a recipe" do
    visit "/"
    within(".white-bg") do
        click_link "Vote", visible: false, href: "/dishes/33/votes"
        reload_page
        expect(page).to have_content "Appetizers Upvote 8 Votes - Soko radicchio bunya nuts"
    end
  end
  it "Doesnt change the upvote twice" do
    visit "/"
    within(".white-bg") do
      click_link "Vote", visible: false, href: "/dishes/33/votes"
      reload_page
      expect(page).to have_content "Appetizers Upvote 8 Votes - Soko radicchio bunya nuts"
    end
  end
end
