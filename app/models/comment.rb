class Comment < ActiveRecord::Base
  attr_accessible :content, :created_at, :is_in_favor, :user_id,parent_id
end
