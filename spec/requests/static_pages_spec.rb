require 'spec_helper'

describe "StaticPages" do
  # use the RSpec let function to eliminate repitition
  let(:base_title) { "Ruby on Rails Tutorial Sample App" } 

  # since page is referenced could use it, and define the subject as page
  subject { page }

  # this is the describe block for the home page
  describe "Home page" do
	  	# define an example 
	  	# since all examples need to visit the root_path can eliminate duplication by using a before block
	  	before {visit root_path}  #Capybara visit function
	    
	    it {should have_content('Sample App')} # have_content, should, should_be are all matchers
	  	# add a title testing example
	  	it {should have_title("#{base_title}")}
	  	it {should_not have_title('| Home')}
	  	
  end

	# this is the describe block for the help page
    describe "Help page" do
    	before {visit help_path} #Capybara visit function
	  	# define an example 
	    it {should have_content('Help')} # have_content, should, should_be are all matchers
	  	# add a title testing example
	  	it {should have_title("#{base_title} | Help")}
	  	
  end

  	# this is the describe block for the help page
    describe "About page" do
    	before {visit about_path} #Capybara visit function  
	  	# define an example 
	    it {should have_content('About')} # have_content, should, should_be are all matchers
	  	# add a title testing example
	  	it  {should have_title("#{base_title} | About Us")}
  end

    # this is the describe block for the contact page
    describe "Contact page" do
	  	before {visit contact_path} #Capybara visit function  
	  	# define an example 
	    it {should have_content('Contact')} # have_content, should, should_be are all matchers
	  	# add a title testing example
	  	it  {should have_title("#{base_title} | Contact")}
  end

end
