require 'spec_helper'

describe Dog do
  it { should validate_presence_of :dog_name }

  describe 'associations' do
    it 'should have an owner' do
      owner = Owner.create!(first_name: 'Sterling', last_name: 'Archer', email: 'valid@email.com', dog: 'Babou')

      dog = Dog.create!(dog_name: 'Babou', breed: 'Fresian', owner: owner)

      expect(dog.owner).to eq owner
    end
  end
end
