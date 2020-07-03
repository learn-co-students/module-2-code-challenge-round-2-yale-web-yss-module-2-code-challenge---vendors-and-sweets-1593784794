class Vendor < ApplicationRecord
    has_many :vendorsweets
    has_many :sweets, through: :vendorsweets

    def self.avg_sweet_price
        total_price = 0
        total_sweets = 0
        self.all.each do |vendor|
            vendor.vendorsweets do |vendorsweet|
                total_price += vendorsweet.price
            end
            total_sweets += vendor.vendorsweets.length
            total_price
        end
        total_sweets
        total_price
        # self.all.each do |vendor|
        #     total_sweets += vendor.vendorsweet.price
        # end

        avg_price = total_price/total_sweets
        avg_price
    end

    def avg_vendor_price
        if self.vendorsweets.length != 0
            self.vendorsweets.sum(&:price)/self.vendorsweets.length
        end
    end

end
