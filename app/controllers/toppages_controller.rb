class ToppagesController < ApplicationController
  before_action :require_user_logged_in, only: [:index]
  def index
    if logged_in?
      @micropost = current_user.microposts.build  # form_for 用
      @microposts = current_user.microposts.order('created_at DESC').page(params[:page])
    end
  end
end
