require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "The Pensions Maze" }  

  subject { page }  

  describe "Home page" do
    before { visit root_path }
   
    it { should have_content("#{base_title}") }
    it { should have_title("#{base_title}") }
  end

  describe "About page" do
    before { visit about_path }   

    it { should have_content('About Us') }
    it { should have_title("#{base_title} - About Us") }
  end

  describe "Privacy policy page" do
    before { visit privacy_path }

    it { should have_content('Privacy Policy') }
    it { should have_title("#{base_title} - Privacy Policy") }
  end

  describe "Getting Started page" do
    before { visit getting_started_path }

    it { should have_content('Getting Started') }
    it { should have_title("#{base_title} - Getting Started") }
  end

  describe "Saving page" do
    before { visit saving_path }

    it { should have_content('Saving') }
    it { should have_title("#{base_title} - Saving") }
  end

  describe "Spending page" do
    before { visit spending_path }
    
    it { should have_content('Spending') }
    it { should have_title("#{base_title} - Spending") }
  end

  describe "Investing page" do
    before { visit investing_path }

    it { should have_content('Investing') }
    it { should have_title("#{base_title} - Investing") }
  end

  describe "News page" do
    before { visit news_path }

    it { should have_content('News') }
    it { should have_title("#{base_title} - News") }
  end

end
