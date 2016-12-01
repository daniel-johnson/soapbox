class SourcesController < ApplicationController
  def create
    source = Source.create(source_params)
    flash[:notice] = 'FYI, source added.'
    redirect_to opinion_path(source.opinion)
  end

  def update
    source = Source.find params[:id]
    source.update source_params
    redirect_to source_path(source)
  end

  def destroy
  end

  private

  def source_params
    params.require(:source).permit(:content, :type)
  end
end
