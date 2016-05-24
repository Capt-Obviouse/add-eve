class NewsController < ApplicationController
  def index
  end
	def setCharacter(character_name)
		@CharName = characters.new
		@CharName.characterOne = character_name
		@CharName.save
	end
end
