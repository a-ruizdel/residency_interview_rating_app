class RatingsController < ApplicationController
  def index
    #@ratings = current_user.ratings
    @g = Rating.ransack(params[:g])
    @ratings = @g.result
    @ratings_current = current_user.ratings

  end

  def show
    @rating = Rating.find(params[:id])
    @candidate = Candidate.new
    @total = @rating.q4 + @rating.q3 + @rating.q2 + @rating.q1
    @average = @total/4
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new
    @rating.candidate_id = params[:candidate_id]
    @rating.overall_comment = params[:overall_comment]
    @rating.q4 = params[:q4]
    @rating.q3 = params[:q3]
    @rating.q2 = params[:q2]
    @rating.q1 = params[:q1]
    @rating.user_id = params[:user_id]

    if @rating.save
      redirect_to "/ratings", :notice => "Rating created successfully."
    else
      render 'new'
    end
  end

  def edit
    @rating = Rating.find(params[:id])
  end

  def update
    @rating = Rating.find(params[:id])

    @rating.candidate_id = params[:candidate_id]
    @rating.overall_comment = params[:overall_comment]
    @rating.q4 = params[:q4]
    @rating.q3 = params[:q3]
    @rating.q2 = params[:q2]
    @rating.q1 = params[:q1]
    @rating.user_id = params[:user_id]

    if @rating.save
      redirect_to "/ratings", :notice => "Rating updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @rating = Rating.find(params[:id])

    @rating.destroy

    redirect_to "/ratings", :notice => "Rating deleted."
  end
end
