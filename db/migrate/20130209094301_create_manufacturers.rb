class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.varchar(40) :name
      t.longtext :adress
      t.decimal(10) :hq_lat
      t.decimal(10) :hq_long
      t.varchar(64) :web
      t.text :longdesc
      t.date :founded_at
      t.date :closed_at
      t.datetime :created_at
      t.datetime :updated_at
      t.varchar(64) :contact_phone
      t.varchar(64) :contact_fax
      t.varchar(64) :contact_email
      t.int :owner_id
      t.int :cover_id
      t.int :user_id
      t.int :country_id
      t.varchar(64) :slug
      t.varchar(20) :stock_ref
      t.float :stock_value
      t.int :city_id
      t.int :state_id
      t.enum(up,down,flat) :stock_dir

      t.timestamps
    end
  end
end
