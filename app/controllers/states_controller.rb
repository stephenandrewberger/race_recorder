class StatesController < ApplicationController
  def index
    @states = State.all
  end

  def show
    @state = State.find(params[:id])
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new
    @state.name = params[:name]

    if @state.save
      redirect_to "/states", :notice => "State created successfully."
    else
      render 'new'
    end
  end

  def edit
    @state = State.find(params[:id])
  end

  def update
    @state = State.find(params[:id])

    @state.name = params[:name]

    if @state.save
      redirect_to "/states", :notice => "State updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @state = State.find(params[:id])

    @state.destroy

    redirect_to "/states", :notice => "State deleted."
  end
end
