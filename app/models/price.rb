class Price < ActiveRecord::Base
  attr_accessible :amount, :available_until, :created_at, :is_limited, :manufacturer_id,currency_id
end
