class User < ActiveRecord::Base
  has_secure_password
  
  attr_accessible :password, :password_confirmation, :username
  
  validates :username, :uniqueness => true, :format => { :with => /^[a-zA-Z0-9_]+$/ }
end
