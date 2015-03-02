class Player < ActiveRecord::Base
	attr_accessible :name, :email, :phone, :address

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence:  true, uniqueness: true, length:  { minimum:  3, maximum:  30 }
  validates :address, length: {minimum: 10, maximum: 150}
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }, length:  { minimum: 8, maximum: 50 }
  validates :phone, length: {minimum: 7,  maximum: 15}

  has_many :attends
	has_many :training_events, :through => :attends

end
