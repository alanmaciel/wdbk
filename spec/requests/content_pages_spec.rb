require 'spec_helper'

describe "Content pages" do

  subject { page }

  describe "Home Page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Wdbk Toolset App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| Home' ) }

    it "should have the right link" do
      click_link "wdbk"
      page.should have_selector('h1', text: 'Wdbk Toolset App')
    end
  end

  describe "Contact Page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end

  describe "Help Page" do
    before { visit help_path }

    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About Page" do
    before { visit about_path }

    it { should have_selector('h1', text: 'About') }
    it { should have_selector('title', text: full_title('About')) }
  end

  describe "News Page" do
    before { visit news_path }

    it { should have_selector('h1', text: 'News') }
    it { should have_selector('title', text: full_title('News')) }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About')
    click_link "Help"
    page.should have_selector 'title', text: full_title('Help')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
    click_link "Home"
    click_link "Sign up now!"
    page.should have_selector 'title', text: full_title('Sign up')
  end
end
