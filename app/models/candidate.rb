class Candidate < ActiveRecord::Base

  mount_uploader :photo, PhotoUploader

  has_many :ratings, :class_name => "Rating", :foreign_key => "candidate_id"

end
