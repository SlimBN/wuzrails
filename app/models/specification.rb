class Specification < ActiveRecord::Base
  attr_accessible :component_id, :model_date, :predecessor_id, :ref_value, :shown_value, :value_name
end
