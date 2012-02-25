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
 

 
end
