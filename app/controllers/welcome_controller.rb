class WelcomeController < ApplicationController
  def index
  end

  def sixteenam
    @dec16am = Candidate.where("block=AM")
  end
end
