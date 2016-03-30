class UsersController < ApplicationController
  def show
    @foods = Food.all
  end
end
