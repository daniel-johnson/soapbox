class OpinionsController < ApplicationController
  def index
    @opinions = Opinion.all
    @opinion = Opinion.new
  end

  def show
    @opinion = Opinion.includes(:sources).find(params[:id])
    @source = Source.new
  end

  def create
    Opinion.create(opinion_params)
    flash[:notice] = 'FYI, Opinion created.'
    redirect_to opinions_path
  end

  def destroy
    @opinion = Opinion.find params[:id]

    if @opinion.destroy
      flash[:notice] = 'FYI, Opinion deleted.'
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
