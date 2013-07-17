class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :email, :password_hash, :password_salt

    validates :password, :confirmation => true
    validates :password, :presence => true, :on => :create

    validates :email, :presence => true
    validates :email, :uniqueness => true
end
