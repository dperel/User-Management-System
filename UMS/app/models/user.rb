class User < ActiveRecord::Base
  has_many :relationships
  has_many :friends, :through => :relationships
  validates :email, confirmation: true
  validates :email_confirmation, presence: true
  validates :terms_of_service, acceptance: true
 
end
