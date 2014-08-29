require 'spec_helper'

describe StaticPagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'courses'" do
    it "returns http success" do
      get 'courses'
      response.should be_success
    end
  end

  describe "GET 'community'" do
    it "returns http success" do
      get 'community'
      response.should be_success
    end
  end

end
