require 'rails_helper'

  feature 'User signs in via Twitter' do
    scenario 'already a registered user who is signed into Twitter' do 
      visit root_path
        click_on 'Sign In with Twitter'

        expect(page).to have_content('You are signed in as')
      end
    end
