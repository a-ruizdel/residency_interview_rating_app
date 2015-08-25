class Rating < ActiveRecord::Base
  belongs_to :candidate, :class_name => "candidate", :foreign_key => "candidate_id"
end
