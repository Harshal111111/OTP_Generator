class UsersController < ApplicationController
  before_action :set_user, only: [:generate_otp, :verify_otp]

  def new
    @user = User.new
  end

  def generate_otp
    @otp = ROTP::TOTP.new(@user.otp_secret)
  end

  def verify_otp
    @otp = ROTP::TOTP.new(@user.otp_secret)
    @verification_result = @otp.verify(params[:otp])

    respond_to do |format|
      format.js
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
