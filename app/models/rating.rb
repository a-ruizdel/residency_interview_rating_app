class Rating < ActiveRecord::Base

  validates :candidate_id,:q1,:q2,:q3,:q4, :user_id, :presence => true
  belongs_to :candidate
  belongs_to :user

end
