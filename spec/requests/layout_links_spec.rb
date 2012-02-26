require 'spec_helper'

describe "LayoutLinks" do
 it "should have a Home page at '/'" do
   get '/'
   response.should have_selector('title', :content => "home1")
 end
 
 it "should have a Contact page at '/contact'" do
   get '/contact'
   response.should have_selector('title', :content => "contact1")
 end
 
 it "should have an About page at '/about'" do
   get '/about'
   response.should have_selector('title', :content => "about")
 end

 it "should have a signup page at '/signup'" do
   get '/signup'
     response.should have_selector('title', :content => "Sign Up")
 end
 
 it "should have the right links on the layout" do
   visit root_path
   response.should have_selector('title', :content => "home1")
   click_link "About"
   response.should have_selector('title', :content => "about")
   click_link "Contact"
   response.should have_selector('title', :content => "contact1")
   click_link "Home"
   response.should have_selector('title', :content => "home1")
   click_link "Sign up now!"
   response.should have_selector('title', :content => "Sign Up")
   response.should have_selector('a[href="/"]>img')
 end
 

end