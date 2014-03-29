require 'spec_helper'

feature 'owner registers new dog', %q{
  As a dog owner
  I want to register my new dog
  So that I can have multiple dogs under my name
  } do

# Acceptance Criteria:
# * An owner must specify the dog name and optionally the breed
# * Upon adding my new dog, I can see a list of all my registered dogs.
# * I can edit existing dogs to specify breed

  scenario 'succesfully fills out new dog form' do
    Owner.create!(first_name: 'Sterling', last_name: 'Archer', email: 'valid@email.com', dog: 'Babou')
    visit '/dogs/new'

    fill_in 'Dog Name', with: 'Babou'
    fill_in 'Breed', with: 'Ocelot'
    select 'Sterling Archer', from: 'Owner'


    click_on 'Register Dog'

    expect(page).to have_content 'Dog was successfully registered'

  end

  scenario 'fills registration form with invalid attributes' do
    visit '/dogs/new'

    click_on 'Register Dog'
    expect(page).to have_content("can't be blank")
  end


end
