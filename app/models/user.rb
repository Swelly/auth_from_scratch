class User < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessor :password
  before_save :encrypt_password

    validates :password, :confirmation => true
    validates :password, :presence => true, :on => :create

    validates :email, :presence => true
    validates :email, :uniqueness => true

  attr_accessible :email, :password, :password_confirmation

  def encrypt_password
    if password.present?
      # This generates a random string that helps me encrypt the password
      self.password_salt = BCrypt::Engine.generate_salt

      # This encrypts the password, using the salt we just created
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def self.authenticate(email, password)
    #this will auth a User.
    user = User.find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

=======

	# This gives us setter/getter methods 
	# This might not be in the database
	attr_accessor :password
	before_save :encrypt_password

	# This is validation
	# It checks that the password_confirmation == password
	# Automatically gives us the password_conformation setter
	# this validator gives us foo_confirmation
	validates :password, confirmation: true
	validates :password, presence: true, on: :create
	validates :email, presence: true
	validates :email, uniqueness: true

	# Allows mass assignment of these
  attr_accessible :email, :password, :password_confirmation

  # I can only call this with
  # u = User.first
  # u.encrypt_password
  def encrypt_password
  	if password.present?
  		# This generates a random string that helps me encrypt the password
  		self.password_salt = BCrypt::Engine.generate_salt

  		# This encrypts the password, using the salt we just created
  		self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  	end
  end

  # I can call this with User.authenticate(l,p)
  def self.authenticate(email, password)
  	# This will auth a user
  	user = User.find_by_email(email)
  	if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
  		user
  	else
  		nil
  	end
  end
>>>>>>> 58d94e6e6e6c9f58185301eaed3d3598cb07679f
end

















