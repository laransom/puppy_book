require 'spec_helper'

feature 'owner edits a dog', %q{
  As a dog owner
  I want to edit my dogs info and specify a breed
  So that I can show everyone what kind of dogs I have
  } do

# Acceptance Criteria:
# * An owner must select a dog from their profile page
# * Selecting the dog will take user to edit page.
# * I can edit existing dogs to specify breed

  scenario 'succesfully edits dog form' do
    owner = Owner.create!(first_name: 'Sterling', last_name: 'Archer', email: 'valid@email.com', dog: 'Babou')
    dog = Dog.create!(dog_name: owner.dog, owner_id: owner.id)
    visit '/owners'
    click_on 'Sterling Archer'
    click_on 'Babou'

    fill_in 'Breed', with: 'Ocelot'


    click_on 'Edit Dog'

    expect(page).to have_content 'Dog was successfully edited'
  end


end
