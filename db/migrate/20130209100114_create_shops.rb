class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.varchar(64) :name
      t.text :long_desc
      t.decimal(10) :coord_lat,coord_long
      t.int :main_shop_id
      t.varchar(64) :web,contact_phone,contact_fax,contact_email
      t.int :user_id
      t.varchar(64) :slug
      t.int :state_id
      t.int :city_id

      t.timestamps
    end
  end
end
