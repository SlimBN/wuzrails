class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.varchar(64) :name
      t.varchar(64) :refname
      t.datetime :created_at
      t.datetime :updated_at
      t.date :released_at
      t.text :long_desc
      t.int :manufacturer_id
      t.int :brag_id
      t.int :original_product_id
      t.varchar(64) :slug

      t.timestamps
    end
  end
end
