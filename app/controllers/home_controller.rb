class HomeController < ApplicationController
  def index
    @consignments = Consignment.all
  end
end
