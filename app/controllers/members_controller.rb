class MembersController < ApplicationController
	before_filter :authenticate_user!
  def console

  	################### CHECK THE CACHE #########################
  	past = Time.new
  
  	past = past - 3601
 	
 	@Test = current_user.last_api_call

  	@characters = Array.new
  	if current_user.last_api_call = nil or #current_user.last_api_call < past
  	################### MAKE THE API CALL #######################
  	 	key_id = current_user.api_keys
		v_code = current_user.api_vcodes
		@account_status = EveOnline::Account::Status.new(key_id, v_code)

		character = EveOnline::Account::Characters.new(key_id, v_code)
		

		def addCharactersToArray

			@characters.push character.characters.first.character_name 	
			@characters.push character.characters.second.character_name
			@characters.push character.characters.third.character_name
		
		rescue Exception
			@characters.push 'Failed to connect to API Server (Check API Keys)'
		end
			addCharactersToArray
	else
		@characters.push current_user.characters
		@characters.push current_user.second_characters
		@characters.push current_user.third_characters
	end
  end
end
