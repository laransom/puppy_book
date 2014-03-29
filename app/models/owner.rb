class Owner < ActiveRecord::Base

  has_many :dogs

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :dog, presence: true


  def full_name
    first_name + ' ' + last_name
  end
end
