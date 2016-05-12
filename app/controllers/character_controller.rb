class CharacterController < ApplicationController
    before_filter :authenticate_user!
  def index
  		@characterArray = Array.new
  		characterArray.push current_user.characters
  		characterArray.push current_user.second_characters
  		characterArray.push current_user.third_characters
  end
end
