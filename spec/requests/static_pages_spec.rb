require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path } 

    it { should have_selector('h1',         text: 'Ajisen Ramen') }
    it { should have_selector('title',      text: full_title('')) }
    it { should_not have_selector 'title',  text: '| Home' }
  end

  describe "About page" do
    before { visit about_path}

    it { should have_selector('h1',     text: 'About Us') }
    it { should have_selector('title',  text: full_title('About Us')) }
  end

  describe "Locations page" do
    before { visit locations_path }

    it { should have_selector('h1',     text: 'Locations') }
    it { should have_selector('title',  text: full_title('Locations')) }
  end
end