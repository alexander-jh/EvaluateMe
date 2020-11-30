class PagesController < ApplicationController
  def home; end

  def uman; end

  def gman; end

  def aman
    @curr_id = params[:course_id]
  end

  def portal; end

  def admin_portal; end
end
