class UsersController < ApplicationController
  # Single Resposibility Principle
  # Concerns encapsulate verbose methods
  include Users::Parameterizer

  def new
    @user = User.new
  end

  def create
    @user = User.new( user_params )
    create_response(@user, root_path)
  end
end
