require 'digest'

class User < ActiveRecord::Base
  attr_accessor :password
  
  ## VALIDATIONS FOR NEW USER CREATION ##
  
  validates :email, 
  			:presence => true,
  			:uniqueness => true,
  			:length => {:within => 6..50, :message => "- We need your email address to be between 6 and 60 characters long."},
  			:format => {:with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i, :message => "- Woops, that email format looks a little funky. Check it out and then try again."}
  validates :password, :confirmation => true,
  			:length => {:within => 6..16},
  			:presence => true,
  			:if => :password_required?
  
  ## RELATIONSHIP DEFINITIONS ##
  
  has_many :projects
  
  before_save :encrypt_new_password
  
  ## USER METHODS ##
  
  def self.authenticate(email, password)
    user = find_by_email(email)
    return user if user && user.authenticated?(password)
  end
  
  def authenticated?(password)
    self.hashed_password == encrypt(password)
  end
  
  def full_name
    "#{first_name} #{last_name}"
  end 
  
  protected
  def encrypt_new_password
    return if password.blank?
    self.hashed_password = encrypt(password)
  end
  
  def password_required?
    hashed_password.blank? || password.present?
  end
  
  def encrypt(string)
    Digest::SHA1.hexdigest(string)
  end 
end
