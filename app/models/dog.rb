class Dog < ActiveRecord::Base
  belongs_to :owner

  validates :dog_name, presence: true
end
