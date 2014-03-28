require 'spec_helper'

describe Owner do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name}
  it { should validate_presence_of :email}
  it { should validate_presence_of :dog_name}

  it 'requires a valid email' do
    owner = Owner.new(first_name: 'Sterling', last_name: 'Archer', email: 'invalidemail', dog_name: 'pup')
    expect(owner).to_not be_valid
  end
end
