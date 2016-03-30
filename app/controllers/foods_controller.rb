class FoodsController < ApplicationController
  def index
    @foods = Food.search(params[:search])
    respond_to do |format|
      format.js
    end
  end
end
