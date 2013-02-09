class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.varchar(64) :name,slug
      t.int :parent_id
      t.enum(draft,active) :status

      t.timestamps
    end
  end
end
