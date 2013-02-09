class Category < ActiveRecord::Base
  attr_accessible :name,slug, :parent_id, :status
end
