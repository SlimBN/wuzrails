class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.int :supply_count
      t.datetime :created_at
      t.datetime :updated_at
      t.int :product_id
      t.int :shop_id

      t.timestamps
    end
  end
end
