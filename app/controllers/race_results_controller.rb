class RaceResultsController < ApplicationController
  def index
    @race_results = RaceResult.all
  end

  def show
    @race_result = RaceResult.find(params[:id])
  end

  def new
    @race_result = RaceResult.new
  end

  def create
    @race_result = RaceResult.new
    @race_result.summary = params[:summary]
    @race_result.pr = params[:pr]
    @race_result.time = params[:time]
    @race_result.race_id = params[:race_id]
    @race_result.runner_id = params[:runner_id]

    if @race_result.save
      redirect_to "/race_results", :notice => "Race result created successfully."
    else
      render 'new'
    end
  end

  def edit
    @race_result = RaceResult.find(params[:id])
  end

  def update
    @race_result = RaceResult.find(params[:id])

    @race_result.summary = params[:summary]
    @race_result.pr = params[:pr]
    @race_result.time = params[:time]
    @race_result.race_id = params[:race_id]
    @race_result.runner_id = params[:runner_id]

    if @race_result.save
      redirect_to "/race_results", :notice => "Race result updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @race_result = RaceResult.find(params[:id])

    @race_result.destroy

    redirect_to "/race_results", :notice => "Race result deleted."
  end
end
