class VendorsweetsController < ApplicationController

    def index
      @vendorsweets = Vendorsweet.all
    end

    def new
      @vendorsweet = Vendorsweet.new
      @vendors = Vendor.all
	  @sweets = Sweet.all
    end

    def create
        @vendorsweet = Vendorsweet.new(vendorsweet_params)
        if @vendorsweet.valid?
            @vendorsweet.save
            redirect_to @vendorsweet.vendor
        else 
            flash[:errors] = @vendorsweet.errors.full_messages
            redirect_to new_vendorsweet_path
        end
    end

    private

    def vendorsweet_params
        params.require(:vendorsweet).permit(:price, :vendor_id, :sweet_id)
    end    

  
end