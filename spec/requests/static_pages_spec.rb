require 'spec_helper'

describe "StaticPages" do
	# this is the describe block for the home page
  describe "Home page" do
	  	# define an example 
	    it "should have the content 'Sample App' " do
	      visit '/static_pages/home' #Capybara visit function  
	      # then use the Capybara page variable with the Rspec expect and matchers
	      expect(page).to have_content('Sample App') # have_content, should, should_be are all matchers
	  	end

	  	# add a title testing example
	  	it  'should have the right title' do
	  		visit '/static_pages/home'
	  		expect(page).to have_title('Ruby on Rails Tutorial Sample App |Home')
	  	end
  end

	# this is the describe block for the help page
    describe "Help page" do
	  	# define an example 
	    it "should have the content 'Help' " do
	      visit '/static_pages/help' #Capybara visit function  
	      # then use the Capybara page variable with the Rspec expect and matchers
	      expect(page).to have_content('Help') # have_content, should, should_be are all matchers
	  	end

	  	# add a title testing example
	  	it  'should have the right title' do
	  		visit '/static_pages/help'
	  		expect(page).to have_title('Ruby on Rails Tutorial Sample App |Help')
	  	end
  end

  	# this is the describe block for the help page
    describe "About page" do
	  	# define an example 
	    it "should have the content 'About' " do
	      visit '/static_pages/about' #Capybara visit function  
	      # then use the Capybara page variable with the Rspec expect and matchers
	      expect(page).to have_content('About') # have_content, should, should_be are all matchers
	  	end

	  	# add a title testing example
	  	it  'should have the right title' do
	  		visit '/static_pages/about'
	  		expect(page).to have_title('Ruby on Rails Tutorial Sample App |About Us')
	  	end
  end

end
