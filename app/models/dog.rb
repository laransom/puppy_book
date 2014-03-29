class Dog < ActiveRecord::Base
  belongs_to :owner

  validates :dog_name, presence: true
  validates :owner_id, presence: true
end
