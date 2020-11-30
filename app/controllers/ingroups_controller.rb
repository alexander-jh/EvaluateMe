class IngroupsController < ApplicationController
  before_action :set_ingroup, only: [:show, :edit, :update, :destroy]

  # GET /ingroups
  # GET /ingroups.json
  def index
    @ingroups = Ingroup.all
  end

  # GET /ingroups/1
  # GET /ingroups/1.json
  def show
  end

  # GET /ingroups/new
  def new
    @current_group = params[:group_id]
    @ingroup = Ingroup.new
  end

  # GET /ingroups/1/edit
  def edit
  end

  # POST /ingroups
  # POST /ingroups.json
  def create
    @ingroup = Ingroup.new(ingroup_params)

    respond_to do |format|
      if @ingroup.save
        format.html { redirect_to @ingroup, notice: 'Ingroup was successfully created.' }
        format.json { render :show, status: :created, location: @ingroup }
      else
        format.html { render :new }
        format.json { render json: @ingroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingroups/1
  # PATCH/PUT /ingroups/1.json
  def update
    respond_to do |format|
      if @ingroup.update(ingroup_params)
        format.html { redirect_to @ingroup, notice: 'Ingroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingroup }
      else
        format.html { render :edit }
        format.json { render json: @ingroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingroups/1
  # DELETE /ingroups/1.json
  def destroy
    @ingroup.destroy
    respond_to do |format|
      format.html { redirect_to ingroups_url, notice: 'Ingroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingroup
      @ingroup = Ingroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingroup_params
      params.require(:ingroup).permit(:user_id, :group_id)
    end
end
