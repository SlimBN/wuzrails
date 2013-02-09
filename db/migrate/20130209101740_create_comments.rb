class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.datetime :created_at
      t.enum(for,against,neutral) :is_in_favor
      t.int :user_id,parent_id

      t.timestamps
    end
  end
end
