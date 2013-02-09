class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.datetime :created_at,updated_at
      t.int :user_id
      t.int :parent_id

      t.timestamps
    end
  end
end
