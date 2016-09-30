require 'rails_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit root_path }

    it "should have the content 'Sample App'" do
      expect(page).to have_content('Sample App')
    end

    it "should have the right title" do
      expect(page).to have_title("Home | Ruby on Rails Tutorial Sample App")
    end
  end

  describe "Help page" do
    before { visit help_path }

    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      expect(page).to have_title("Help | Ruby on Rails Tutorial Sample App")
    end
  end

  describe "About page" do
    before { visit about_path }

    it "should have the content 'About'" do
      expect(page).to have_content('About')
    end

    it "should have the right title" do
      expect(page).to have_title("About Us | Ruby on Rails Tutorial Sample App")
    end
  end

  describe "Contact page" do
    before { visit contact_path }

    it "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    it "should have the right title" do
      expect(page).to have_title("Contact | Ruby on Rails Tutorial Sample App")
    end
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title('About Us')
    click_link "Help"
    expect(page).to have_title('Help')
    click_link "Contact"
    expect(page).to have_title('Contact')
  end
end
