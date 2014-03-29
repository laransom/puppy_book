require 'spec_helper'

feature 'owner registers dog', %q{
  As a dog owner
  I want to register my dog
  So that I can connect with other dog lovers
  } do

# Acceptance Criteria:
# * An owner must specify their first name, last name, email address, and dog's name.
# * Upon adding my entry, I can see a list of other registered dog owners.
# * An owner's full_name can be requested. Hint: This will require an instance method

  scenario 'succesfully fills out registration form' do
    visit '/owners/new'

    fill_in 'First Name', with: 'Sterling'
    fill_in 'Last Name', with: 'Archer'
    fill_in 'Email', with: 'valid@email.com'
    fill_in 'Dog Name', with: 'Babou'
    click_on 'Register Dog'

    expect(page).to have_content 'Dog was successfully registered'
    expect(page).to have_content 'Sterling'

    click_on 'Sterling Archer'

    expect(page).to have_content 'Babou'

  end

  scenario 'fills registration form with invalid attributes' do
    visit '/owners/new'

    click_on 'Register Dog'
    expect(page).to have_content("can't be blank")
  end



end
