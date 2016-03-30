class UsersController < ApplicationController
  def show
    @foods = Food.all
    @entries = current_user.entries
  end
end
