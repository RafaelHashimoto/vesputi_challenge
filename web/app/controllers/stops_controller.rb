class StopsController < ApplicationController
  def new; end

  def create
    response = Stops::CreateService.new(params[:file]).run
    if response
      flash[:success] = 'The file records were successfully created'
    else
      flash[:alert] = 'Ops! Something went wrong. Please check your file before upload it.'
    end
    render :new
  end
end
