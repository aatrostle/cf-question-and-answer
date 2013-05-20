require 'spec_helper'

feature 'Creating Questions' do
  scenario "can create a question" do
    visit '/'
    click_link 'New Question'
    fill_in 'Title', :with => 'What color is the sky?'
    fill_in 'Answer', :with => 'The sky is blue, but in Seattle its usually gray.'
    click_button 'Create Question'
    page.should have_content('Question has been created.')
  end
end
