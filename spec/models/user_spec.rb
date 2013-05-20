require "spec_helper"

describe "User" do
  context "with valid attributes" do
    let(:user) { User.new(username: "jimbo27", email: "jimbo@example.com", password: "password")}
    
    it "should create a new instance w/ valid attributes" do
      user.should be_valid
    end
  
  end
end