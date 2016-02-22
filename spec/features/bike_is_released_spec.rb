require 'capybara/rspec'
require 'capybara/dsl'

feature "Releasing a bike" do
  scenario "A bike is released" do
    visit '/'
    click_button "Release Bike"
    expect(page).to have_content('A bike was released')
  end
end
