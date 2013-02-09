class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.enum(pending,valid,unvalid) :status
      t.datetime :created_at
      t.int :user_id

      t.timestamps
    end
  end
end
