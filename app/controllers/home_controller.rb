class HomeController < ApplicationController
  require 'json'

  def index
    @consignments = Consignment.all
  end

  def chart
    @chart_data = Consignment.select(:consignment_type).group(:consignment_type).count
    return render json: @chart_data.to_json
  end

end
