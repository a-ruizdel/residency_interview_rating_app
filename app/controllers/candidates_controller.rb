class CandidatesController < ApplicationController
  def index
    #@candidates = Candidate.all
    @q = Candidate.ransack(params[:q])
    @candidates = @q.result
  end

  def show
    @candidate = Candidate.find(params[:id])
    @rating = Rating.new
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new
    @candidate.aoa = params[:aoa]
    @candidate.candidate_lastname = params[:candidate_lastname]
    @candidate.block = params[:block]
    @candidate.interview_on = params[:interview_on]
    @candidate.candidate_id = params[:candidate_id]
    @candidate.candidate_firstname = params[:candidate_firstname]
    @candidate.add_degree = params[:add_degree]
    @candidate.usmle_2 = params[:usmle_2]
    @candidate.usmle_1 = params[:usmle_1]
    @candidate.hometown = params[:hometown]
    @candidate.school = params[:school]
    @candidate.photo = params[:photo]

    if @candidate.save
      redirect_to "/candidates", :notice => "Candidate created successfully."
    else
      render 'new'
    end
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def update
    @candidate = Candidate.find(params[:id])

    @candidate.aoa = params[:aoa]
    @candidate.candidate_lastname = params[:candidate_lastname]
    @candidate.block = params[:block]
    @candidate.interview_on = params[:interview_on]
    @candidate.candidate_id = params[:candidate_id]
    @candidate.candidate_firstname = params[:candidate_firstname]
    @candidate.add_degree = params[:add_degree]
    @candidate.usmle_2 = params[:usmle_2]
    @candidate.usmle_1 = params[:usmle_1]
    @candidate.hometown = params[:hometown]
    @candidate.school = params[:school]
    @candidate.photo = params[:photo]

    if @candidate.save
      redirect_to "/candidates", :notice => "Candidate updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @candidate = Candidate.find(params[:id])

    @candidate.destroy

    redirect_to "/candidates", :notice => "Candidate deleted."
  end
end
