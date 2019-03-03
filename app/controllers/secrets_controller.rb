class SecretsController < ApplicationController
  before_action :require_login
  # skip_before_action :require_login, only: [:index]

  def index
    @user = current_user
  end

  def show
  end

  private

  def require_login
    redirect_to login_path unless current_user
  end
end
