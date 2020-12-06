class IncompletesController < ApplicationController
  before_action :set_incomplete, only: [:show, :edit, :update, :destroy]

  # GET /incompletes
  # GET /incompletes.json
  def index
    @incompletes = Incomplete.all
  end

  # GET /incompletes/1
  # GET /incompletes/1.json
  def show
  end

  # GET /incompletes/new
  def new
    @incomplete = Incomplete.new
  end

  # GET /incompletes/1/edit
  def edit
  end

  # POST /incompletes
  # POST /incompletes.json
  def create
    @incomplete = Incomplete.new(incomplete_params)
    @incomplete.save
  end

  # PATCH/PUT /incompletes/1
  # PATCH/PUT /incompletes/1.json
  def update
    respond_to do |format|
      if @incomplete.update(incomplete_params)
        format.html { redirect_to @incomplete, notice: 'Incomplete was successfully updated.' }
        format.json { render :show, status: :ok, location: @incomplete }
      else
        format.html { render :edit }
        format.json { render json: @incomplete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incompletes/1
  # DELETE /incompletes/1.json
  def destroy
    @incomplete.destroy
    respond_to do |format|
      format.html { redirect_to incompletes_url, notice: 'Incomplete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incomplete
      @incomplete = Incomplete.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incomplete_params
      params.require(:incomplete).permit(:project_id, :user_id)
    end
end
