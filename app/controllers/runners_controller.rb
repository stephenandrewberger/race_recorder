class RunnersController < ApplicationController
  def index
    @runners = Runner.all
  end

  def show
    @runner = Runner.find(params[:id])
  end

  def new
    @runner = Runner.new
  end

  def create
    @runner = Runner.new
    @runner.name = params[:name]

    if @runner.save
      redirect_to "/runners", :notice => "Runner created successfully."
    else
      render 'new'
    end
  end

  def edit
    @runner = Runner.find(params[:id])
  end

  def update
    @runner = Runner.find(params[:id])

    @runner.name = params[:name]

    if @runner.save
      redirect_to "/runners", :notice => "Runner updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @runner = Runner.find(params[:id])

    @runner.destroy

    redirect_to "/runners", :notice => "Runner deleted."
  end
end
