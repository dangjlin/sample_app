#require 'spec_helper'

#describe "StaticPages" do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end
#end

require 'spec_helper'



describe "Static pages" do

let(:page_title) { "Ruby on Rails Tutorial Sample App"}
subject { page }

  describe "Home page" do

  	before { visit root_path }

    it { should have_content ('Sample App') } 
    it { should have_title ("#{page_title} | Home")}
  
  end

  describe "Help page" do
  
  	before { visit help_path }
  
    it { should have_content ('Help')}
    it { should have_title ("#{page_title} | Help")}
  
  end

  describe "About page" do
  	
  	before { visit about_path }
  	
  	it { should have_content ('About')}
  	it { should have_title ("#{page_title} | About Us")}

  end

  describe "Contact page" do

  	before { visit contact_path}

  	#it { should have_content ('Contact')}
    it { should have_selector('h1' , text: 'Contact')}
  	it { should have_title ("#{page_title} | Contact")}

  end


  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
    
  end
	
end		