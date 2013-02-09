class CreateComparaisons < ActiveRecord::Migration
  def change
    create_table :comparaisons do |t|
      t.datetime :created_at
      t.varchar(128) :slug
      t.int :first_product_id,second_product_id,user_id,category_id

      t.timestamps
    end
  end
end
