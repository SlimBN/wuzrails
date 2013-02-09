class Vote < ActiveRecord::Base
  attr_accessible :created_at,updated_at, :value,comparaison_id,user_id,product_id,specification_id,post_id
end
