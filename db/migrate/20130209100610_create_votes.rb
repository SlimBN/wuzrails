class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.int :value,comparaison_id,user_id,product_id,specification_id,post_id
      t.datetime :created_at,updated_at

      t.timestamps
    end
  end
end
