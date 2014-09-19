class JobsController < ApplicationController

  def index
    @jobs = Job.includes(:company).order(updated_at: :desc)
  end

  def show
    @job= Job.find(params[:id])
  end


end
