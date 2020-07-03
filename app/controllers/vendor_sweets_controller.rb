class VendorSweetsController < ApplicationController

  def new
    @vendors = Vendor.all
    @sweets = Sweet.all
    @vendor_sweet = VendorSweet.new
  end

  def create
    @vendor_sweet = VendorSweet.new(vs_params)
    if @vendor_sweet.valid?
      @vendor_sweet.save
      redirect_to @vendor_sweet.vendor
    else
      flash[:errors] = @vendor_sweet.errors.full_messages
      redirect_to new_vendor_sweet_path
    end
  end


  def vs_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
  end

end
