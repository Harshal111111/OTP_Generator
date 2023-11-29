class User < ApplicationRecord
  before_create :generate_otp_secret

  private

  def generate_otp_secret
    self.otp_secret = ROTP::Base32.random_base32
  end
end

  