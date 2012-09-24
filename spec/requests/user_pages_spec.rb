require 'spec_helper'

describe "UserPages" do

  subject { page }

  describe "signup page" do
    before do
      visit signup_path
    end

    it { should have_selector('h1', text: 'Sign up') }
    it { should have_selector('title', title: full_title('Sign up')) }
  end

end
