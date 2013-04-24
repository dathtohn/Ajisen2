require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Ajisen 2'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Ajisen 2')
    end

    it "should have the right title" do
  		visit '/static_pages/home'
  		page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
		end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title" do
  		visit '/static_pages/about'
  		page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
		end
  end

  describe "Locations page" do

    it "should have the content 'Locations'" do
      visit '/static_pages/locations'
      page.should have_selector('h1', :text => 'Locations')
    end

    it "should have the right title" do
  		visit '/static_pages/locations'
  		page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Locations")
		end
  end
end