class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.decimal(3) :amount
      t.datetime :created_at
      t.date :available_until
      t.boolean :is_limited
      t.int :manufacturer_id,currency_id

      t.timestamps
    end
  end
end
