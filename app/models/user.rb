class User < ActiveRecord::Base
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

end
