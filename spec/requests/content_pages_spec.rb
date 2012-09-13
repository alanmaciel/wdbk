require 'spec_helper'

describe "Content pages" do

  describe "Home Page" do

    it "should have the h1 'WDBK Toolset App'" do
      visit '/content_pages/home'
      page.should have_selector('h1', :text => 'WDBK Toolset App')
    end

    it "should have the base title" do
      visit '/content_pages/home'
      page.should have_selector('title', :text => "WDBK" )
    end

    it "should not have a custom page title" do
      visit '/content_pages/home'
      page.should_not have_selector('title', :text => '| Home' )
    end

  end

  describe "Contact Page" do

    it "should have the h1 'Contact'" do
      visit '/content_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the right title" do
      visit '/content_pages/contact'
      page.should have_selector('title', :text => "WDBK | Contact" )
    end

  end

  describe "Help Page" do

    it "should have the h1 'Help'" do
      visit '/content_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
      visit '/content_pages/help'
      page.should have_selector('title', :text => "WDBK | Help" )
    end

  end
end
