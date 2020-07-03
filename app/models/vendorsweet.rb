class Vendorsweet < ApplicationRecord
    belongs_to :sweet
    belongs_to :vendor

    validates :price, presence: true
    validates :price, numericality: {greater_than: 0}
    validates :vendor_id, uniqueness: { scope: :sweet_id, message: "can only have one vendor-sweet pair"}
    
end
