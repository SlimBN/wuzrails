class CreateCredibilities < ActiveRecord::Migration
  def change
    create_table :credibilities do |t|
      t.int :value
      t.int :category_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
