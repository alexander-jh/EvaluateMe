class CompletesController < ApplicationController
  def new
    @complete = Complete.new
  end

  def create
    @complete = Complete.new(complete_params)
    @complete.save
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_complete
    @complete = Complete.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def complete_params
    params.require(:complete).permit(:project_id, :user_id)
  end
end