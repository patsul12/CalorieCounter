class EntriesController < ApplicationController
  def new
    @food = Food.find(params[:food_id])
    @entry = Entry.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @food = Food.find(params[:food_id])
    @entry = @food.entries.new(entry_params)
    @entry.user = current_user
    if @entry.save
      respond_to do |format|
        format.js
      end
    else
      redirect_to root_path
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:amount)
  end
end
