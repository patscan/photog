class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :username, :email, :password, :password_confirmation

  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email

  has_many :albums
  has_many :photos, :through => :albums
end