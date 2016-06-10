class RacesController < ApplicationController
  def index
    @races = Race.all
  end

  def show
    @race = Race.find(params[:id])
  end

  def new
    @race = Race.new
  end

  def create
    @race = Race.new
    @race.state_id = params[:state_id]
    @race.city = params[:city]
    @race.state = params[:state]
    @race.date = params[:date]
    @race.name = params[:name]

    if @race.save
      redirect_to "/races", :notice => "Race created successfully."
    else
      render 'new'
    end
  end

  def edit
    @race = Race.find(params[:id])
  end

  def update
    @race = Race.find(params[:id])

    @race.state_id = params[:state_id]
    @race.city = params[:city]
    # @race.state = params[:state]
    @race.date = params[:date]
    @race.name = params[:name]

    if @race.save
      redirect_to "/races", :notice => "Race updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @race = Race.find(params[:id])

    @race.destroy

    redirect_to "/races", :notice => "Race deleted."
  end
end
