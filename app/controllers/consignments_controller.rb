class ConsignmentsController < ApplicationController
  def index
    @consignments = Consignment.all
  end

  def import
    Consignment.import(params[:file])
    redirect_to root_path, notice: "CSV Consignment data successfully imported!"
  end
end