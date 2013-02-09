class Supply < ActiveRecord::Base
  attr_accessible :created_at, :product_id, :shop_id, :supply_count, :updated_at
end
