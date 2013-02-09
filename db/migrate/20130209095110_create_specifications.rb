class CreateSpecifications < ActiveRecord::Migration
  def change
    create_table :specifications do |t|
      t.varchar(64) :value_name
      t.varchar(64) :shown_value
      t.int :ref_value
      t.int :component_id
      t.date :model_date
      t.int :predecessor_id

      t.timestamps
    end
  end
end
