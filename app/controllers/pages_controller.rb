class PagesController < ApplicationController
  def home
    if user_signed_in?
      if current_user.admin
        redirect_to admin_portal_url
      else
        redirect_to portal_url
      end
    end
  end

  def uman; end

  def gman
    @current_group = params[:group_id]
  end

  def aman
    @current_course = params[:course_id]
  end

  def portal; end

  def admin_portal; end
end
