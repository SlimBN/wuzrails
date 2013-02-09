class CreateAcquirements < ActiveRecord::Migration
  def change
    create_table :acquirements do |t|
      t.date :purchased_at
      t.datetime :created_at
      t.datetime :updated_at
      t.int :shop_id
      t.int :manufacturer_id

      t.timestamps
    end
  end
end
