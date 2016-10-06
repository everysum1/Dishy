require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(username: 'someDude', email: 'fakeaddress@fakedomain.com', password: 'password') }


  it "has a username" do
    expect(user.username).to eq('someDude')
  end

  it "has an email" do
    expect(user.email).to eq('fakeaddress@fakedomain.com')
  end

  it "has an email that is unique" do

  end

  it "has a password" do
    expect(user.password).to exist
  end
end
