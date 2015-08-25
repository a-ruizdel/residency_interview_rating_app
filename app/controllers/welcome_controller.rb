class WelcomeController < ApplicationController
  def index
  end

  def sixteenam
    @dec16am = Candidate.where("interview_on = 15-12-16 AND block = AM")


  end
end
