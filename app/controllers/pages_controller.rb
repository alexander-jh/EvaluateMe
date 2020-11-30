class PagesController < ApplicationController
  def home; end

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
