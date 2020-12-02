class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy, :send_evaluation]

  # GET /projects
  # GET /projects.json
  def index
    if !user_signed_in?
      redirect_to home_path
    elsif current_user.admin?
      redirect_to admin_portal_path
    else
      redirect_to portal_path
    end
  end

  def show
    @pid = params[:id]
  end

  def send_evaluation
    @project = Project.find(params[:id])
    if Incourse.where(course_id: @project.course_id).count.positive?
      users_in_proj = Incourse.where(course_id: @project.course_id).reject { |r|
        Incomplete.find_by(user_id: r.user_id)
      }
      users_in_proj.each do |user|
        Incomplete.create project_id: @project.id, user_id: user.user_id
      end
    end
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    respond_to do |format|
      if @project.save
        format.html { redirect_back(fallback_location: root_path) }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:course_id, :pname)
    end
end
