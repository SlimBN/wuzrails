class SimpleVote < ActiveRecord::Base
  attr_accessible :answer_id,shop_id,manufacturer_id,comment_id,product_id, :created_at, :is_in_favor
end
