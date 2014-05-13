require 'spec_helper'


describe "Authentication" do

  describe "signup" do

    it "should validate the presence of a name" do
      FactoryGirl.build(:user_with_no_name).should_not be_valid
    end

    it "should validate the presence of an email" do
      FactoryGirl.build(:user_with_invalid_email).should_not be_valid
    end

    it "should validate the length of password" do
      FactoryGirl.build(:user_with_invalid_password).should_not be_valid
    end

    it "should validate a unique email" do
      FactoryGirl.create(:user)
      FactoryGirl.build(:user).should_not be_valid
    end

  end

end