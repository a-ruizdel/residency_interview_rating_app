class Candidate < ActiveRecord::Base
  validates :candidate_lastname,:candidate_firstname, :presence => true
  validates :candidate_lastname, :uniqueness => { :scope => :candidate_firstname }
  validates :block,:interview_on,:usmle_1, :presence => true


  mount_uploader :photo, PhotoUploader

  has_many :ratings

end
