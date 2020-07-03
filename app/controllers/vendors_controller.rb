class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
    @avg_price = @vendors.avg_sweet_price
  end

  def show
    @vendor = Vendor.find(params[:id])
  end

end
