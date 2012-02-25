require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home1'" do
    it "returns http success" do
      get 'home1'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home1'
      response.should have_selector("title", 
                  :content => "Ruby on Rails Tutorial Sample App home1")
    end
  end

  describe "GET 'contact1'" do
    it "returns http success" do
      get 'contact1'
      response.should be_success
    end
     it "should have the right title" do
        get 'contact1'
        response.should have_selector("title", 
                    :content => "Ruby on Rails Tutorial Sample App contact1")
      end
  end
  
  
  
  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title" do
       get 'about'
       response.should have_selector("title", 
                   :content => "Ruby on Rails Tutorial Sample App about")
     end
  end
  
  
  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end
    
    it "should have the right title" do
       get 'help'
       response.should have_selector("title", 
                   :content => "Ruby on Rails Tutorial Sample App help")
     end
  end
end
