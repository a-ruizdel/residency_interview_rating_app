class Rating < ActiveRecord::Base

  validates :candidate_id,:q1,:q2,:q3,:q4, :user_id, :presence => true
  validates :q1,:q2,:q3,:q4, numericality: { :less_than_or_equal_to => 5, :greater_than_or_equal_to => 1}
  belongs_to :candidate
  belongs_to :user

end
