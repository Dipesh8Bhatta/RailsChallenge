class ConsignmentsController < ApplicationController
require 'json'

  def index
    @consignments = Consignment.all
  end

  def import
    Consignment.import(params[:file])
    redirect_to root_path, notice: "CSV Consignment data successfully imported!"
  end

  def search
    if params[:consignmentType] != "" and params[:arrivalDate] != ""
      @answer = Consignment.where("consignment_type = ? AND DATE(entryAt) = ?", params[:consignmentType], params[:arrivalDate])
    elsif params[:consignmentType] != ""
      @answer = Consignment.where("consignment_type = ? ", params[:consignmentType])
    elsif params[:arrivalDate] != ""
      @answer = Consignment.where("DATE(entryAt) = ? ", params[:arrivalDate])
    else
      @answer = Consignment.all
    end
    # @answer = { Dipu: params[:consignmentType], bhatta: params[:arrivalDate] }
    return render json: @answer.to_json
  end
end