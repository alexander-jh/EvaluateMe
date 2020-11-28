class AdminofsController < ApplicationController
  before_action :set_adminof, only: [:show, :edit, :update, :destroy]

  # GET /adminofs
  # GET /adminofs.json
  def index
    @adminofs = Adminof.all
  end

  # GET /adminofs/1
  # GET /adminofs/1.json
  def show
  end

  # GET /adminofs/new
  def new
    @adminof = Adminof.new
  end

  # GET /adminofs/1/edit
  def edit
  end

  # POST /adminofs
  # POST /adminofs.json
  def create
    @adminof = Adminof.new(adminof_params)

    respond_to do |format|
      if @adminof.save
        format.html { redirect_to @adminof, notice: 'Adminof was successfully created.' }
        format.json { render :show, status: :created, location: @adminof }
      else
        format.html { render :new }
        format.json { render json: @adminof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminofs/1
  # PATCH/PUT /adminofs/1.json
  def update
    respond_to do |format|
      if @adminof.update(adminof_params)
        format.html { redirect_to @adminof, notice: 'Adminof was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminof }
      else
        format.html { render :edit }
        format.json { render json: @adminof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminofs/1
  # DELETE /adminofs/1.json
  def destroy
    @adminof.destroy
    respond_to do |format|
      format.html { redirect_to adminofs_url, notice: 'Adminof was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminof
      @adminof = Adminof.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adminof_params
      params.require(:adminof).permit(:user_id, :course_id)
    end
end
