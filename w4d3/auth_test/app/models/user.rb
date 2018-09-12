class User < ApplicationRecord

  validates :username, :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: {message: "password can't be blank"}
  validates :password_digest, length: {minimum: 6, allow_nil: true}

  attr_reader :password

  def self.find_by_credentials(username_in, pass_in)
    user = User.find_by(username: username_in, password_digest: pass_in)
  end

  def self.generate_session_token
    token = SecureRandom.urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = User.generate_session_token
  end

  def ensure_session_token
    reset_session_token!  if user.session_token.nil?
  end

  def password=(pass)
    @password = pass
    self.password_digest = BCrypt::Password.create(pass)
  end
end
