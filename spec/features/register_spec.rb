require 'rails_helper'
describe "the register process", :type => :feature do

  it "registers a new user" do
    visit '/users/sign_up'
    within("#registerField") do
      fill_in 'user[username]', with: 'Tester'
      fill_in 'user[email]', with: 'Test@test.com'
      fill_in 'user[password]', with: 'password'
      fill_in 'user[password_confirmation]', with: 'password'
    end
    click_button 'Sign up'
    expect(page).to have_content 'You have signed up successfully'
  end
end
