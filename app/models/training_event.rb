class TrainingEvent < ActiveRecord::Base
  attr_accessible  :training_location,:training_date,:training_type,:duration


  validates :training_location, presence: true, length: {maximum: 50}
  validates :training_type, presence: true, length: {maximum: 30}
  validates :training_date, presence: true
  validates :duration, presence: true

  has_many :attends
	has_many :players, :through => :attends


end
