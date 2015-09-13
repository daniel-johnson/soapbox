class OpinionsController < ApplicationController
  def index
    @opinions = Opinions.all
    @opinion = Opinion.new
  end

  def show
    @opinion = Opinion.find(params[:id]).includes(:sources)
  end

  def create

  end

  def destroy
    @opinion = Opinion.find params[:id]

    if @opinion.destroy
      flash[:notice] = 'Opinion deleted.'
      redirect_to opinions_path
    else
      flash[:alert] = 'Something went wrong, opinion not deleted.'
      redirect_to opinions_path
    end
  end

  def update
    opinion = Opinion.find params[:id]
    opinion.update opinion_params
    redirect_to opinion_path(opinion)
  end

  private

  def opinion_params
    params.require(:opinion).permit(:summary, :body)
  end
end
