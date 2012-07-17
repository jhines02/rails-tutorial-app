require 'spec_helper'

describe "StaticPages" do

  let( :base_title ) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have the <h1> element as 'Tutorial App'" do
      visit '/static_pages/home'
      page.should have_selector( 'h1', :text => 'Tutorial App' )
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector( 'title', :text => "#{base_title} | Home" )
    end
  end

  describe "Help page" do
    it "should have the <h1> element as 'Help'" do
      visit '/static_pages/help'
      page.should have_selector( 'h1', :text => 'Help' )
    end

    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector( 'title', :text => "#{base_title} | Help" )
    end
  end

  describe "About page" do
    it "should have the <h1> element as 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector( 'h1', :text => 'About Us' )
    end

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector( 'title', :text => "#{base_title} | About Us" )
    end
  end

  describe "Contact page" do
    it "should have the <h1> element as 'Contact Info'" do
      visit '/static_pages/contact'
      page.should have_selector( 'h1', :text => 'Contact Info' )
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector( 'title', :text => "#{base_title} | Contact" )
    end
  end

end
