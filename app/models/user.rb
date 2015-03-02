class User < ActiveRecord::Base
  has_secure_password
  attr_accessor :remember_token
  validates_presence_of :password, :on => :create


	#attr_accessible  :name, :email, :password_digest,   :password_confirmation
	before_save { self.email = email.downcase }

  validates :name,  presence: true, length:  { minimum:  3, maximum:  30 }
  validates_presence_of :password, :on => :create
  validates :password, length: { minimum: 6 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 100 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  # Returns the hash digest of the given string.
  def User.digest(string)
    # this code only works with a version 3.1.x version of bcrypt-ruby
    # secure_password will not work with ruby 1.9 and bcrypt 3.1.x
    # I have short circuited the test, leaving cost at 10
    # ==================================================================
    #cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
    #    BCrypt::Engine.cost
    cost = 10
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end


  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  # Returns true if the given token matches the digest.
  def authenticated?(remember_token)
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end
  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end

end

