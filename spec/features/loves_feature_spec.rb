require 'rails_helper'

feature 'loves' do

  before { Image.create description: 'First picture', avatar_file_name: 'test.jpg' }

  scenario 'allow users to "love" images' do
    visit '/images'
    click_link 'Love'
    expect(page).to have_content 'Your LOVE has been registered!'
  end
end
