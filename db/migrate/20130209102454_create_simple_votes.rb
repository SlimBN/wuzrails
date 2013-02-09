class CreateSimpleVotes < ActiveRecord::Migration
  def change
    create_table :simple_votes do |t|
      t.boolean :is_in_favor
      t.datetime :created_at
      t.int :answer_id,shop_id,manufacturer_id,comment_id,product_id

      t.timestamps
    end
  end
end
