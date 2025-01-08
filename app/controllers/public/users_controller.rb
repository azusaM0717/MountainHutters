class Public::UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :check_guest_user, only: [:edit, :update]
  def show
  end

  def edit
  end

  def update
  end

  def unsubscribe
  end

  def withdraw
  end

  private

  def check_guest_user
    if current_user.guest?
      redirect_to root_path, alert: "ゲストユーザーはプロフィールの編集ができません。"
    end
  end
end
