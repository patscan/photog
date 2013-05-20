class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :username, :email, :password, :password_confirmation

  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email

  def self.authenticate(email, password)
    find_by_email(email).try(:authenticate, password)
  end
end