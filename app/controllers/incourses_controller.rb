class IncoursesController < ApplicationController
  before_action :set_incourse, only: [:show, :edit, :update, :destroy]

  # GET /incourses
  # GET /incourses.json
  def index
    @incourses = Incourse.all
  end

  # GET /incourses/1
  # GET /incourses/1.json
  def show
  end

  # GET /incourses/new
  def new
    @current_course = params[:course_id]
    @incourse = Incourse.new
  end

  # GET /incourses/1/edit
  def edit
  end

  # POST /incourses
  # POST /incourses.json
  def create
    @incourse = Incourse.new(incourse_params)
    respond_to do |format|
      if @incourse.save
        flash[:alert] = "Student successfully added to course."
        format.html { redirect_back(fallback_location: root_path) }
        format.json { render :show, status: :created, location: @incourse }
      else
        format.html { render :new }
        format.json { render json: @incourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incourses/1
  # PATCH/PUT /incourses/1.json
  def update
    respond_to do |format|
      if @incourse.update(incourse_params)
        format.html { redirect_to @incourse, notice: 'Incourse was successfully updated.' }
        format.json { render :show, status: :ok, location: @incourse }
      else
        format.html { render :edit }
        format.json { render json: @incourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incourses/1
  # DELETE /incourses/1.json
  def destroy
    @incourse.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incourse
      @incourse = Incourse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incourse_params
      params.require(:incourse).permit(:user_id, :course_id)
    end
end
