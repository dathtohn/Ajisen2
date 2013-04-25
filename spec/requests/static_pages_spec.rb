require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ajisen Ramen" }

  describe "Home page" do

    it "should have the content 'Ajisen'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Ajisen')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ajisen")
    end

  it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title" do
  		visit '/static_pages/about'
  		page.should have_selector('title', :text => "#{base_title} | About Us")
		end
  end

  describe "Locations page" do

    it "should have the content 'Locations'" do
      visit '/static_pages/locations'
      page.should have_selector('h1', :text => 'Locations')
    end

    it "should have the right title" do
  		visit '/static_pages/locations'
  		page.should have_selector('title', :text => "#{base_title} | Locations")
		end
  end
end