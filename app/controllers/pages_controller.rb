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

  def gman
    if !user_signed_in?
      redirect_to root_url
    elsif !current_user.admin
      redirect_to portal_url
    end
    @current_group = params[:group_id]
  end

  def aman
    if !user_signed_in?
      redirect_to root_url
    elsif !current_user.admin
      redirect_to portal_url
    end
    @current_course = params[:course_id]
  end

  def portal
    if user_signed_in?
      if current_user.admin
        redirect_to admin_portal_url
      end
    else
      redirect_to root_url
    end
  end

  def admin_portal
    if user_signed_in?
      if !current_user.admin
        redirect_to portal_url
      end
    else
      redirect_to root_url
    end
  end
end
