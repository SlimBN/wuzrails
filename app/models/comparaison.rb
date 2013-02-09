class Comparaison < ActiveRecord::Base
  attr_accessible :created_at, :first_product_id,second_product_id,user_id,category_id, :slug
end
