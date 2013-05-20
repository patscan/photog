require "spec_helper"

describe "User" do
  context "with valid attributes" do
    let(:user) { User.new(username: "jimbo27", email: "jimbo@example.com", password: "password")}
    
    it "should create a new instance w/ valid attributes" do
      user.should be_valid
    end

    it "should not store the raw pasword" do
      user.save
      user.password_digest.should_not eq("password")
    end
  
  end
end