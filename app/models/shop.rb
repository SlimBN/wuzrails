class Shop < ActiveRecord::Base
  attr_accessible :city_id, :coord_lat,coord_long, :long_desc, :main_shop_id, :name, :slug, :state_id, :user_id, :web,contact_phone,contact_fax,contact_email
end
