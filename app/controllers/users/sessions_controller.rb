# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  def guest_sign_in
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "ゲストユーザー"
    end
    sign_in user
    redirect_to root_path, notice: "ゲストユーザーとしてログインしました。"
  end
end
