class Answer < ActiveRecord::Base
  attr_accessible :content, :created_at,updated_at, :parent_id, :user_id
end
