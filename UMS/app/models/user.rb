class User < ActiveRecord::Base
   has_many :relationships
   has_many :friends, :through => :relationships
  # validates :email, confirmation: true
  # validates :email_confirmation, presence: true
  # validates :terms_of_service, acceptance: true

  def self.find_or_create_from_auth_hash(auth_hash)
    user = where(provider: auth_hash[:provider], uid: auth_hash[:uid]).first_or_create
    user.update(
      # name: auth_hash[:info][:nickname], --> Don't use twitter name for now.
      profile_image: auth_hash[:info][:image],
      token: auth_hash.credentials.token,
      secret: auth_hash.credentials.secret
    )
    user
  end
end
