require 'spec_helper'

describe Owner do

  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name}
  it { should validate_presence_of :email}
  it { should validate_presence_of :dog}

  it 'requires a valid email' do
    owner = Owner.new(first_name: 'Sterling', last_name: 'Archer', email: 'invalidemail', dog: 'pup')
    expect(owner).to_not be_valid
  end

  context 'full_name method prints full name' do
    it 'prints full name' do
      owner = Owner.new(first_name: 'Sterling', last_name: 'Archer', email: 'invalidemail', dog: 'pup')
      expect(owner.full_name).to eq('Sterling Archer')
    end
  end
end

