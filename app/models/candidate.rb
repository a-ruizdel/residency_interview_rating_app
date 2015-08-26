class Candidate < ActiveRecord::Base
  validates :candidate_lastname, :presence => true
  validates :candidate_lastname, :uniqueness => true
  validates :block,:interview_on,:usmle_1, :presence => true

  mount_uploader :photo, PhotoUploader

  has_many :ratings
  has_many :users, :through => :ratings
end
